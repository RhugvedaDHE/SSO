const express = require('express');
const EntityUser = require('../models').EntityUser;
const UserPersonalDetails = require('../models').UserPersonalDetails;
const Institute = require('../models').Institute;
const Departments = require('../models').Department;
const Company = require('../models').Company;

const { success, errorResponse, validation } = require("../responseApi");


exports.getInstituteAdmins=async function(req,res){
    const data=await EntityUser.findAll({
        attributes:['user_id','cio_id'],
        where:{
            entity_type_id:1
        }
    })
    if(data){
        //console.log("data=",data)
        var jsondata=[]
        for(const d of data){
             let userdetails= await UserPersonalDetails.findOne({
                attributes:['firstname','lastname'],
                where:{
                    user_id:d.user_id
                }
            });
            console.log("userdetails=",userdetails)
            
            //console.log("userdetails.firstname=",userdetails.firstname)
            let Institutename=await Institute.findOne({
                    attributes:['name'],
                    where:{
                        id:d.cio_id
                }
                });
           jsondata.push({"firstname":userdetails.firstname,"lastname":userdetails.lastname,"Institute_Name":Institutename.name})
           //console.log("jsondata=",jsondata)
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