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
// package org.allbinary.business.user

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const User = @import("org/allbinary/business/user/modules/User.zig").User;
const UserRoleData = @import("org/allbinary/business/user/role/UserRoleData.zig").UserRoleData;
const RequestParams = @import("org/allbinary/logic/communication/http/request/RequestParams.zig").RequestParams;
const TransformInfoHttpInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface.zig").TransformInfoHttpInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const CreateUserFactory = @import("org/allbinary/business/user/CreateUserFactory.zig").CreateUserFactory;
const UserInterface = @import("org/allbinary/business/user/UserInterface.zig").UserInterface;

pub const NewUserFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.NewUserFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance() ?*UserInterface {
        return Inheritance.upcast(?*UserInterface, User.create());
    }
    

    // throws Exception
    pub fn getInstance1(transformInfoInterface: ?*TransformInfoInterface) ?*UserInterface {
        const httpTransformInfoInterface: ?*TransformInfoHttpInterface = Inheritance.cast(?*TransformInfoHttpInterface, transformInfoInterface);
        const httpServletRequest: ?*HttpServletRequest = Inheritance.cast(?*HttpServletRequest, Inheritance.receiverOf(Inheritance.receiver(httpTransformInfoInterface.?, "getPageContext").getPageContext().?, "getRequest").getRequest());
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.callStatic(RequestParams, "create1", .{ httpServletRequest }).toHashMap());
        const role: ?*String = Inheritance.cast(?*String, Inheritance.call(Inheritance.receiver(httpTransformInfoInterface.?, "getPropertiesHashMap").getPropertiesHashMap().?, "get", .{ Object.toString(Object.of(UserRoleData.NAME)) }));
        _ = Inheritance.call(hashMap.?, "put", .{ Object.toString(Object.of(UserRoleData.NAME)), role });
        return Inheritance.upcast(?*UserInterface, Inheritance.callStatic(CreateUserFactory, "getInstance", .{ hashMap }));
    }
    

    // throws Exception
    pub fn getInstance2(httpServletRequest: ?*HttpServletRequest, propertiesHashMap: ?*HashMap) ?*UserInterface {
        if (propertiesHashMap != null) {
            const requestHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.callStatic(RequestParams, "create1", .{ httpServletRequest }).toHashMap());
            const roleString: ?*String = Inheritance.cast(?*String, Inheritance.call(propertiesHashMap.?, "get", .{ Object.toString(Object.of(UserRoleData.NAME)) }));
            _ = Inheritance.call(requestHashMap.?, "put", .{ Object.toString(Object.of(UserRoleData.NAME)), roleString });
            return Inheritance.upcast(?*UserInterface, Inheritance.callStatic(CreateUserFactory, "getInstance", .{ requestHashMap }));
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Null HashMap"); break :exception error.Exception; }});
        }
    }
};

