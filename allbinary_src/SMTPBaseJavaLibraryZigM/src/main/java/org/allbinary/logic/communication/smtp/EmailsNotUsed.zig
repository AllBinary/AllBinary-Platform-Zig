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
// package org.allbinary.logic.communication.smtp

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicErrorNodeUtil = @import("org/allbinary/data/tree/dom/BasicErrorNodeUtil.zig").BasicErrorNodeUtil;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const Email = @import("org/allbinary/logic/communication/smtp/Email.zig").Email;
const EmailData = @import("org/allbinary/logic/communication/smtp/EmailData.zig").EmailData;

pub const EmailsNotUsed = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.EmailsNotUsed";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    emailInfoVector: ?*BasicArrayList = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.emailInfoVector = Inheritance.upcast(@TypeOf(this.emailInfoVector), BasicArrayListD.create());
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PAYMENT })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("toXmlNode") });
            }
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ EmailData.NAME }));
            const size: i32 = self.emailInfoVector.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const email: ?*Email = Inheritance.cast(?*Email, Inheritance.call(self.emailInfoVector.?, "get", .{ index }));
                const emailNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(email.?, "toXmlNode", .{ document }));
                if (emailNode != null) {
                    _ = Inheritance.call(node.?, "appendChild", .{ emailNode });
                }
                }
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PAYMENT })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.END, self, String.literal("toXmlNode()") });
            }
            return node;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("toXmlNode()"), e });
//             }
//             const @"error": ?*String = String.literal("Error Processing Order.  Please contact us if error persists.<p/>"); _ = @"error";
//             return Inheritance.upcast(?*Node, Inheritance.callStatic(BasicErrorNodeUtil, "get", .{ document, @"error" }));
    }
};

