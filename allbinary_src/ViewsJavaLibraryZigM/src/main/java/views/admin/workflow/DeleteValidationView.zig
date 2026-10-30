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
// package views.admin.workflow

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const WorkFlowEntityFactory = @import("org/allbinary/data/tables/workflow/WorkFlowEntityFactory.zig").WorkFlowEntityFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const WorkFlowData = @import("org/allbinary/logic/control/workflow/WorkFlowData.zig").WorkFlowData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const WorkFlowView = @import("views/admin/workflow/WorkFlowView.zig").WorkFlowView;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const DeleteValidationView = struct {
    const Self = @This();
    pub const java_name = "views.admin.workflow.DeleteValidationView";
    base: WorkFlowView = undefined,
    logUtil: ?*LogUtil = null,
    workFlowName: ?*String = null,
    // Implements ValidationComponentInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(WorkFlowView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        this.workFlowName = Inheritance.upcast(@TypeOf(this.workFlowName), Inheritance.call(Inheritance.receiverOf(Inheritance.receiver(this, "getPageContext").getPageContext().?, "getRequest").getRequest().?, "getParameter", .{ WorkFlowData.getInstance().?.NAME }));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Name: "), this.workFlowName), this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            if (self.workFlowName == null) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.call(Inheritance.receiverOf(WorkFlowEntityFactory.getInstance().?, "create2").create2().?, "get", .{ self.workFlowName, Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getStoreName").getStoreName() }) == null) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("WorkFlow does not exist."), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to validate form"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            if (self.workFlowName == null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("WorkFlow name is invalid<br />") });
            }
            if (Inheritance.call(Inheritance.receiverOf(WorkFlowEntityFactory.getInstance().?, "create2").create2().?, "get", .{ self.workFlowName, Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getStoreName").getStoreName() }) == null) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("WorkFlow does not exist."), self, String.literal("validationInfo()") });
                }
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("WorkFlow does not exist<br />") });
            }
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to generate validation error info"), self, String.literal("validationInfo()"), e });
//             }
//             return String.literal("Error Validating Form");
    }
    

    pub fn toValidationInfoDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    pub fn toValidationInfoNode(self: *Self, document: ?*Document) ?*Node {
        _ = document;
        _ = self;
        return null;
    }
};

