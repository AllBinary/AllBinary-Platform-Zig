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
// package org.allbinary.media.audio

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const NoSound = @import("org/allbinary/media/audio/NoSound.zig").NoSound;
const Sound = @import("org/allbinary/media/audio/Sound.zig").Sound;

pub const PlayerQueue = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.PlayerQueue";
    commonStrings: ?*CommonStrings = null,
    list: ?*BasicArrayList = null,
    max: i32 = 0,
    const TOTAL: ?*String = String.literal("Sounds In Queue: ");

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        
    }
    

    pub fn create1(max: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.max = max;
        return this;
    }
    

    pub fn add(self: *Self, sound: ?*Sound) void {
        { // try
            if (!Inheritance.call(self.list.?, "contains", .{ sound })) {
                _ = Inheritance.call(self.list.?, "add", .{ sound });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.ADD });
    }
    

    pub fn process(self: *Self) bool {
        var sound: ?*Sound = Inheritance.upcast(?*Sound, NoSound.getInstance());
        { // try
            var played: bool = false;
            if (self.list.?.size() > 0) {
                sound = Inheritance.cast(?*Sound, Inheritance.call(self.list.?, "removeAt", .{ 0 }));
                if (sound != null) {
                    _ = Inheritance.receiverOf(sound.?.getPlayerP().?, "start").start();
                }
                while (self.list.?.size() > self.max) {
                    _ = Inheritance.call(self.list.?, "removeAt", .{ 0 });
                }
                played = true;
            }
            return played;
        }
        // catch (Exception e):
//             var resource: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING); _ = resource;
//             if (sound != null) {
//                 resource = Inheritance.upcast(@TypeOf(resource), sound.?.getResource());
//             }
//             _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.commonStrings.?.EXCEPTION_LABEL }).?, "append", .{ resource }))), self, self.commonStrings.?.PROCESS });
//             return false;
    }
    

    pub fn clear(self: *Self) void {
        _ = self.list.?.clear();
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ PlayerQueue.TOTAL }).?, "appendint", .{ self.list.?.size() }))));
    }
};

