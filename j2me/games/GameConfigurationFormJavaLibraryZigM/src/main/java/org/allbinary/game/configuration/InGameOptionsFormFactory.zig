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
// package org.allbinary.game.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const CommandForm = @import("org/allbinary/graphics/displayable/screen/CommandForm.zig").CommandForm;
const Init = @import("org/allbinary/init/Init.zig").Init;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const InGameOptionsForm = @import("org/allbinary/game/configuration/InGameOptionsForm.zig").InGameOptionsForm;

pub const InGameOptionsFormFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.InGameOptionsFormFactory";
    logUtil: ?*LogUtil = null,
    SINGLETON: ?*CommandForm = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.SINGLETON = Inheritance.upcast(?*CommandForm, CommandForm.getNullCommandForm());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*InGameOptionsFormFactory {
        if (Object.same(InGameOptionsFormFactory.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            InGameOptionsFormFactory.instance = Inheritance.upcast(@TypeOf(InGameOptionsFormFactory.instance), InGameOptionsFormFactory.create());
        }
        return Inheritance.cast(?*InGameOptionsFormFactory, InGameOptionsFormFactory.instance);
    }
    

    pub fn init(self: *Self, commandListener: ?*CommandListener, initInterface: ?*Init, title: ?*String, backgrounBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) void {
        { // try
            if (Object.same(self.SINGLETON, CommandForm.getNullCommandForm())) {
                _ = initInterface.?.init();
                self.SINGLETON = Inheritance.upcast(@TypeOf(self.SINGLETON), Inheritance.callStatic(InGameOptionsForm, "create4", .{ commandListener, title, backgrounBasicColor, foregroundBasicColor }));
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.INIT, e });
    }
    

    pub fn get(self: *Self) ?*CommandForm {
        return self.SINGLETON;
    }
};

