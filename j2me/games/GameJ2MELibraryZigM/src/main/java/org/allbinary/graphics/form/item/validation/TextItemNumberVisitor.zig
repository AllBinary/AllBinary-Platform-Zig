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

pub const TextItemNumberVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.item.validation.TextItemNumberVisitor";
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
        _ = self;
        const value: ?*String = Inheritance.cast(?*String, anyType);
        if (value.?.length() < 2) {
            const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
            if (Inheritance.call(stringValidationUtil.?, "isNumber", .{ value })) {
                return Inheritance.upcast(?Object, BooleanFactory.getInstance().?.TRUE);
            } else {
                { // try
                    _ = Inheritance.call(TextNotificationUtil.getInstance().?, "fireError", .{ String.literal("Numbers Only") });
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
};

