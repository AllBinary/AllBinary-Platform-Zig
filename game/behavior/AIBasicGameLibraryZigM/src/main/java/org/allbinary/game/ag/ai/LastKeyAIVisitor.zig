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
// package org.allbinary.game.ag.ai

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicAI = @import("org/allbinary/game/ai/BasicAI.zig").BasicAI;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const Visitor = @import("org/allbinary/logic/util/visitor/Visitor.zig").Visitor;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const LastKeyAIVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.LastKeyAIVisitor";
    base: Visitor = undefined,
    logUtil: ?*LogUtil = null,
    TRUE: ?*Boolean = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.TRUE = Inheritance.upcast(?*Boolean, BooleanFactory.getInstance().?.TRUE);
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
        { // try
            const basicAI: ?*BasicAI = Inheritance.cast(?*BasicAI, anyType);
            const key: i32 = Inheritance.receiver(basicAI.?, "getLastKey").getLastKey();
            if (key != -1) {
                _ = Inheritance.call(basicAI.?, "processKeyAI", .{ key });
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.VISIT, e });
        return Inheritance.upcast(?Object, self.TRUE);
    }
};

