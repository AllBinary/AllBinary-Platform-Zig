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
// package org.allbinary.graphics.form.item.validation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TextNotificationUtil = @import("org/allbinary/game/input/TextNotificationUtil.zig").TextNotificationUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const Visitor = @import("org/allbinary/logic/util/visitor/Visitor.zig").Visitor;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const TextItemUserIdentifierVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.item.validation.TextItemUserIdentifierVisitor";
    base: Visitor = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Visitor.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn visit(self: *Self, anyType: ?Object) ?Object {
        const value: ?*String = Inheritance.cast(?*String, anyType);
        if (value.?.length() < 2) {
            const charValue: u16 = Inheritance.call(value.?, "charAt", .{ 0 });
            const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
            if (Inheritance.call(stringValidationUtil.?, "isNumber", .{ value })) {
                return Inheritance.upcast(?Object, BooleanFactory.getInstance().?.TRUE);
            } else if (Inheritance.call(self, "isLetter", .{ charValue })) {
                return Inheritance.upcast(?Object, BooleanFactory.getInstance().?.TRUE);
            } else {
                { // try
                    _ = Inheritance.call(TextNotificationUtil.getInstance().?, "fireError", .{ String.literal("Only Letters & Numbers Allowed") });
                }
                // catch (Exception e):
//                     const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                     _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.VISIT, e });
                return Inheritance.upcast(?Object, BooleanFactory.getInstance().?.FALSE);
            }
        } else {
            return Inheritance.upcast(?Object, BooleanFactory.getInstance().?.FALSE);
        }
    }
    

    pub fn isLetter(self: *Self, charValue: u16) bool {
        _ = self;
        const value: i32 = @as(i32, @intCast(charValue));
        return (value > 64 and value < 91) or (value > 96 and value < 123);
    }
};

