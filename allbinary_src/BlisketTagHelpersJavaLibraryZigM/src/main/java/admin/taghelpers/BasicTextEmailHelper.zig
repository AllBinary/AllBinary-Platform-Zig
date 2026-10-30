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
// package admin.taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const UserEmailEventNameData = @import("org/allbinary/logic/communication/smtp/event/UserEmailEventNameData.zig").UserEmailEventNameData;
const UserEmailEventHandler = @import("org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler.zig").UserEmailEventHandler;
const AdminUserEmailEventHandlerSingletons = @import("org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons.zig").AdminUserEmailEventHandlerSingletons;
const AdminEmailInfo = @import("org/allbinary/logic/communication/smtp/info/AdminEmailInfo.zig").AdminEmailInfo;
const BasicEmailInfo = @import("org/allbinary/logic/communication/smtp/info/BasicEmailInfo.zig").BasicEmailInfo;
const EmailInfo = @import("org/allbinary/logic/communication/smtp/info/EmailInfo.zig").EmailInfo;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ServiceClientInformationInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory.zig").ServiceClientInformationInterfaceFactory;
const TagHelper = @import("admin/taghelpers/TagHelper.zig").TagHelper;

pub const BasicTextEmailHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.BasicTextEmailHelper";
    base: TagHelper = undefined,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    hashMap: ?*HashMap = null,
    pageContext: ?*PageContext = null,

    fn initFields(this: *Self) void {
        this.abeClientInformation = Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.getInstance());
        
        
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TagHelper.create().*;
        this.initFields();
        this.pageContext = pageContext;
        this.hashMap = hashMap;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn send(self: *Self) void {
        const adminEmailSubject: ?*String = Inheritance.cast(?*String, Inheritance.call(self.hashMap.?, "get", .{ String.literal("Subject") }));
        const adminEmailTextBody: ?*String = Inheritance.cast(?*String, Inheritance.call(self.hashMap.?, "get", .{ String.literal("Body") }));
        const adminBasicEmailInfo: ?*BasicEmailInfo = Inheritance.cast(?*BasicEmailInfo, Inheritance.callStatic(AdminEmailInfo, "create2", .{ adminEmailSubject, adminEmailTextBody }));
        const adminEmailInfo: ?*EmailInfo = Inheritance.callStatic(EmailInfo, "create1", .{ adminBasicEmailInfo });
        const adminUserEmailEventHandler: ?*UserEmailEventHandler = Inheritance.upcast(?*UserEmailEventHandler, Inheritance.call(AdminUserEmailEventHandlerSingletons.getInstance().?, "getInstance", .{ self.abeClientInformation, UserEmailEventNameData.INSTALLER }));
        _ = Inheritance.call(adminUserEmailEventHandler.?, "receiveEmailInfo", .{ UserEmailEventNameData.INSTALLER, adminEmailInfo });
    }
};

