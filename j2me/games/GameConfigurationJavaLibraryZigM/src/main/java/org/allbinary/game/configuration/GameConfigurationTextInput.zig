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
// const TextField = @import("javax/microedition/lcdui/TextField.zig").TextField;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;

pub const GameConfigurationTextInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.GameConfigurationTextInput";
    label: ?*String = null,
    text: ?*String = null,
    var hashtable: ?*ABHashtable = undefined;
    pub var SIMULATOR_IP: ?*GameConfigurationTextInput = undefined;
    pub var SIMULATOR_PORT: ?*GameConfigurationTextInput = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        hashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        SIMULATOR_IP = Inheritance.callStatic(GameConfigurationTextInput, "create2", .{ String.literal("IP: "), String.literal("192.168.1.3") });
        SIMULATOR_PORT = Inheritance.callStatic(GameConfigurationTextInput, "create2", .{ String.literal("Port: "), String.literal("8010") });
    }

    fn initFields(this: *Self) void {
        this.label = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.text = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn create2(label: ?*String, text: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setText", .{ text });
        _ = Inheritance.call(this, "setLabel", .{ label });
        _ = Inheritance.call(GameConfigurationTextInput.hashtable.?, "put", .{ this.getLabel(), this });
        return this;
    }
    

    pub fn update(textField: ?*TextField) void {
        const anyType: ?Object = Inheritance.cast(?Object, textField.?.getLabel());
        const gameConfigurationTextInput: ?*GameConfigurationTextInput = Inheritance.cast(?*GameConfigurationTextInput, Inheritance.call(GameConfigurationTextInput.hashtable.?, "get", .{ anyType }));
        _ = Inheritance.call(gameConfigurationTextInput.?, "setText", .{ textField.?.getString() });
    }
    

    pub fn setText(self: *Self, text: ?*String) void {
        self.text = text;
    }
    

    pub fn getText(self: *Self) ?*String {
        return self.text;
    }
    

    pub fn setLabel(self: *Self, label: ?*String) void {
        self.label = label;
    }
    

    pub fn getLabel(self: *Self) ?*String {
        return self.label;
    }
    

    pub fn getHashtable() ?*ABHashtable {
        return Inheritance.upcast(?*ABHashtable, GameConfigurationTextInput.hashtable);
    }
};

