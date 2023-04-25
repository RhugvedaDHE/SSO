const express = require('express');
const EntityUser = require('../models').EntityUser;
const UserPersonalDetails = require('../models').UserPersonalDetails;
const Institute = require('../models').Institute;
const Departments = require('../models').Department;
const Company = require('../models').Company;
const UserRole = require('../models').UserRole;
const Role = require('../models').Role;

const { success, errorResponse, validation } = require("../responseApi");
const { Op } = require("sequelize");

exports.getInstituteAdmins=async function(req,res){
    const data=await UserRole.findAll({
        attributes:['user_id'],
        where:{
            role_id:8
        }
    });
    if(data){
        
        var jsondata=[]
        for(const d of data){
             let userdetails= await UserPersonalDetails.findOne({
                attributes:['firstname','lastname'],
                where:{
                    user_id:d.user_id
                }
            });
            
            let EUser=await EntityUser.findOne({
                attributes:['cio_id'],
                where:{
                    user_id:d.user_id
                }
            })
            
            let Institutename=await Institute.findOne({
                    attributes:['name'],
                    where:{
                        id:EUser.cio_id
                }
                });
           jsondata.push({"firstname":userdetails.firstname,"lastname":userdetails.lastname,"Department_Name":Institutename.name})
           
        }
        return  res.status(200).json(success("Institute Admins fetched successfully!", jsondata))
    }else{
        return res.status(400).json(errorResponse(error, 400));
    }
   
}



exports.getDepartmentname=async function(req,res){
    console.log("-----------userid from token--------------=",req.user.id);
    EntityUser.findOne({
        attributes:['cio_id','entity_type_id'],
        where:{
            user_id:req.user.id
        }
    }).then((data)=>{
        console.log("------------cio_id----------------=",data.cio_id)
        if(data.entity_type_id==1){
            Institute.findOne({
                attributes:['id','name'],
                where:{
                    id:data.cio_id
                }
            }).then((result)=>{
                res.status(200).json(success("Successfully retrieved Institute Name", result))
            }).catch((error)=>{
                res.status(400).json(errorResponse(error, 400));
            }) 
        }else if(data.entity_type_id==2){
            Company.findOne({
                attributes:['id','name'],
                where:{
                    id:data.cio_id
                }
            }).then((result)=>{
                res.status(200).json(success("Successfully retrieved Company Name", result))
            }).catch((error)=>{
                res.status(400).json(errorResponse(error, 400));
            })
        }else{
            Departments.findOne({
                attributes:['id','name'],
                where:{
                    id:data.cio_id
                }
            }).then((result)=>{
                res.status(200).json(success("Successfully retrieved Department Admins Department Details", result))
            }).catch((error)=>{
                res.status(400).json(errorResponse(error, 400));
            })
        }   
    }).catch((error)=>{
        res.status(400).json(errorResponse(error, 400));
    });
   
}

//Get All Admins
exports.getAdmindetails=async function(req,res){
   
    const data= await UserRole.findAll({
        attributes:['user_id','role_id'],
        where:{
            role_id: {
                [Op.in]: ['3','4','5','8','12']
                  }
        }
    })
    if(data){
        console.log("----------data----------=",data)
        var jsondata=[]
        var result;
        for(const d of data){
             let userdetails= await UserPersonalDetails.findOne({
                attributes:['firstname','lastname'],
                where:{
                    user_id:d.user_id
                }
            });

            let rolename= await Role.findOne({
                attributes:['name'],
                where:{
                    id:d.role_id
                }
            });



            
            let EUser=await EntityUser.findOne({
                attributes:['cio_id','entity_type_id'],
                where:{
                    user_id:d.user_id
                }
            })
            if(EUser){
           
            if(EUser.entity_type_id==1){
                result=await Institute.findOne({
                    attributes:['id','name'],
                    where:{
                        id:EUser.cio_id
                    }
                })
                console.log("--------------Institute result-----------=",result)
                if(!result){
                    res.status(400).json(errorResponse(error, 400));
                }
            }else if(EUser.entity_type_id==2){
                result= await Company.findOne({
                    attributes:['id','name'],
                    where:{
                        id:EUser.cio_id
                    }
                })
                console.log("--------------Company result-----------=",result)
                if(!result){
                    res.status(400).json(errorResponse(error, 400));
                }
            }else{
                result= await Departments.findOne({
                    attributes:['id','name'],
                    where:{
                        id:EUser.cio_id
                    }
                })
                console.log("--------------Department result-----------=",result)
                if(!result){
                    res.status(400).json(errorResponse(error, 400));
                }
            } 
        } 
           jsondata.push({"firstname":userdetails.firstname,"lastname":userdetails.lastname,"Organisation_Name":result.name,"Role":rolename.name})
           
        }
        return  res.status(200).json(success(" Admins fetched successfully!", jsondata))
    }else{
        return res.status(400).json(errorResponse(error, 400));
    }
      
}