//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// 
// Created By: Travis Berthelot
//  
// Generated Code Do Not Modify
// package org.allbinary.logic.visual.transform.info

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const TransformInfoProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.TransformInfoProperties";
    name: ?*String = null,
    label: ?*String = null,
    description: ?*String = null,
    objectFileName: ?*String = null,
    objectConfigFileName: ?*String = null,
    templateFileName: ?*String = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
        
    }
    

    pub fn create6(name: ?*String, label: ?*String, description: ?*String, objectFileName: ?*String, objectConfigFileName: ?*String, templateFileName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        this.label = label;
        this.description = description;
        this.objectFileName = objectFileName;
        this.templateFileName = templateFileName;
        this.objectConfigFileName = objectConfigFileName;
        return this;
    }
    

    pub fn setName(self: *Self, value: ?*String) void {
        self.name = value;
    }
    

    pub fn setDescription(self: *Self, value: ?*String) void {
        self.description = value;
    }
    

    pub fn setViewFile(self: *Self, value: ?*String) void {
        self.objectFileName = value;
    }
    

    pub fn setTemplateFile(self: *Self, value: ?*String) void {
        self.templateFileName = value;
    }
    

    pub fn setObjectConfigFile(self: *Self, value: ?*String) void {
        self.objectConfigFileName = value;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getLabel(self: *Self) ?*String {
        return self.label;
    }
    

    pub fn getDescription(self: *Self) ?*String {
        return self.description;
    }
    

    pub fn getViewFile(self: *Self) ?*String {
        return self.objectFileName;
    }
    

    pub fn getTemplateFile(self: *Self) ?*String {
        return self.templateFileName;
    }
    

    pub fn getObjectConfigFile(self: *Self) ?*String {
        return self.objectConfigFileName;
    }
};

