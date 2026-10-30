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
const WorkFlowEntityFactory = @import("org/allbinary/data/tables/workflow/WorkFlowEntityFactory.zig").WorkFlowEntityFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const NewWorkFlowFactory = @import("org/allbinary/logic/control/workflow/NewWorkFlowFactory.zig").NewWorkFlowFactory;
const WorkFlowData = @import("org/allbinary/logic/control/workflow/WorkFlowData.zig").WorkFlowData;
const WorkFlowInterface = @import("org/allbinary/logic/control/workflow/WorkFlowInterface.zig").WorkFlowInterface;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ServiceClientInformationInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory.zig").ServiceClientInformationInterfaceFactory;
const ModifyTable = @import("admin/taghelpers/ModifyTable.zig").ModifyTable;

pub const WorkFlowRequestHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.WorkFlowRequestHelper";
    base: ModifyTable = undefined,
    logUtil: ?*LogUtil = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    workFlowInterface: ?*WorkFlowInterface = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.abeClientInformation = Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.getInstance());
        
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ModifyTable.create().*;
        this.initFields();
        this.workFlowInterface = Inheritance.upcast(@TypeOf(this.workFlowInterface), Inheritance.call(NewWorkFlowFactory.getInstance().?, "getInstance", .{ this.abeClientInformation, hashMap, pageContext }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn delete(self: *Self) ?*String {
        { // try
            const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
            _ = Inheritance.call(Inheritance.receiverOf(WorkFlowEntityFactory.getInstance().?, "create2").create2().?, "delete", .{ self.workFlowInterface.?.getName(), stringUtil.?.EMPTY_STRING });
            const success: ?*String = Inheritance.upcast(?*String, String.plus(String.plus(String.plus(String.plus(String.literal("Successfully Removed the workflow with "), WorkFlowData.getInstance().?.NAME), String.literal("= ")), self.workFlowInterface.?.getName()), String.literal(" from ")));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("delete()") });
            }
            return success;
        }
        // catch (Exception e):
//             { // try
//                 const @"error": ?*String = Inheritance.upcast(?*String, String.plus(String.plus(String.plus(String.plus(String.literal("Failed to remove workflow with "), WorkFlowData.getInstance().?.NAME), String.literal("= ")), self.workFlowInterface.?.getName()), String.literal(" from "))); _ = @"error";
//                 if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                     _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("delete()"), e });
//                 }
//                 std.debug.panic("{any}", .{exception: { _ = e; break :exception error.Exception; }});
//             }
//             // catch (Exception e2):
// //                 const @"error": ?*String = String.literal("Failed to get data from workflowinterface to set error string"); _ = @"error";
// //                 if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
// //                     _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("delete()"), e2 });
// //                 }
// //                 return @"error";
    }
    

    pub fn insert(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("New User Successfully added to the Users Table");
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("add()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to add User"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("add()"), e });
//             }
//             return @"error";
    }
    

    pub fn update(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Updated WorkFlow Successfully");
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("update()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to update WorkFlow"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("update()"), e });
//             }
//             return @"error";
    }
};

