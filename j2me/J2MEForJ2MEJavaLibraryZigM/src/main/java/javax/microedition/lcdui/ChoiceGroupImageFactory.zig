// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package javax.microedition.lcdui

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const ChoiceGroupImageFactory = struct {
    const Self = @This();
    pub const java_name = "javax.microedition.lcdui.ChoiceGroupImageFactory";
    multiOff: []i8 = &.{},
    multiOn: []i8 = &.{},
    radioOff: []i8 = &.{},
    radioOn: []i8 = &.{},
    imgMultiOffO: ?*Image = null,
    imgMultiOnO: ?*Image = null,
    imgRadioOffO: ?*Image = null,
    imgRadioOnO: ?*Image = null,
    imgMultiOff: ?*Image = null,
    imgMultiOn: ?*Image = null,
    imgRadioOff: ?*Image = null,
    imgRadioOn: ?*Image = null,
    imageArray: []?*Image = &.{},
    var instance: ?*ChoiceGroupImageFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ChoiceGroupImageFactory.create();
    }

    fn initFields(this: *Self) void {
        this.multiOff = @constCast(&[_]i8{ @as(i8, @intCast(-119)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, @as(i8, @intCast(-12)), @as(i8, @intCast(-117)), 0, 0, 0, 6, 80, 76, 84, 69, @as(i8, @intCast(-1)), @as(i8, @intCast(-1)), @as(i8, @intCast(-1)), @as(i8, @intCast(-69)), @as(i8, @intCast(-69)), @as(i8, @intCast(-69)), @as(i8, @intCast(-57)), 75, @as(i8, @intCast(-33)), @as(i8, @intCast(-8)), 0, 0, 0, 30, 73, 68, 65, 84, 120, @as(i8, @intCast(-38)), 99, 96, 96, 96, 96, 12, 101, @as(i8, @intCast(-8)), @as(i8, @intCast(-51)), @as(i8, @intCast(-32)), @as(i8, @intCast(-64)), 32, @as(i8, @intCast(-64)), @as(i8, @intCast(-60)), @as(i8, @intCast(-64)), @as(i8, @intCast(-64)), @as(i8, @intCast(-128)), 11, 51, @as(i8, @intCast(-122)), 50, @as(i8, @intCast(-4)), 6, 0, 63, 116, 3, 1, 53, @as(i8, @intCast(-108)), 39, @as(i8, @intCast(-26)), 0, 0, 0, 0, 73, 69, 78, 68, @as(i8, @intCast(-82)), 66, 96, @as(i8, @intCast(-126)) })[0..];
        this.multiOn = @constCast(&[_]i8{ @as(i8, @intCast(-119)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, @as(i8, @intCast(-12)), @as(i8, @intCast(-117)), 0, 0, 0, 12, 80, 76, 84, 69, @as(i8, @intCast(-1)), @as(i8, @intCast(-1)), @as(i8, @intCast(-1)), @as(i8, @intCast(-69)), @as(i8, @intCast(-69)), @as(i8, @intCast(-69)), 106, 106, 106, 2, 2, 2, 106, @as(i8, @intCast(-103)), 14, @as(i8, @intCast(-47)), 0, 0, 0, 53, 73, 68, 65, 84, 120, @as(i8, @intCast(-38)), 99, 96, 96, 124, @as(i8, @intCast(-64)), @as(i8, @intCast(-16)), @as(i8, @intCast(-1)), @as(i8, @intCast(-77)), 3, @as(i8, @intCast(-45)), 65, @as(i8, @intCast(-111)), 15, 76, 12, 108, 12, 76, 12, @as(i8, @intCast(-4)), 12, 76, 12, 18, 12, 76, @as(i8, @intCast(-68)), 127, 24, @as(i8, @intCast(-104)), 126, 45, 96, 96, @as(i8, @intCast(-7)), @as(i8, @intCast(-11)), @as(i8, @intCast(-109)), @as(i8, @intCast(-127)), @as(i8, @intCast(-23)), @as(i8, @intCast(-65)), 3, 3, @as(i8, @intCast(-29)), 127, @as(i8, @intCast(-122)), @as(i8, @intCast(-113)), 0, 5, 37, 12, @as(i8, @intCast(-34)), 1, @as(i8, @intCast(-99)), @as(i8, @intCast(-83)), 100, 0, 0, 0, 0, 73, 69, 78, 68, @as(i8, @intCast(-82)), 66, 96, @as(i8, @intCast(-126)) })[0..];
        this.radioOff = @constCast(&[_]i8{ @as(i8, @intCast(-119)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, @as(i8, @intCast(-44)), @as(i8, @intCast(-62)), @as(i8, @intCast(-97)), @as(i8, @intCast(-75)), 0, 0, 0, 9, 80, 76, 84, 69, @as(i8, @intCast(-1)), @as(i8, @intCast(-1)), @as(i8, @intCast(-1)), @as(i8, @intCast(-69)), @as(i8, @intCast(-69)), @as(i8, @intCast(-69)), 106, 106, 106, @as(i8, @intCast(-44)), 13, @as(i8, @intCast(-1)), @as(i8, @intCast(-24)), 0, 0, 0, 42, 73, 68, 65, 84, 120, @as(i8, @intCast(-38)), 99, 96, 90, @as(i8, @intCast(-59)), @as(i8, @intCast(-64)), 32, @as(i8, @intCast(-63)), 48, @as(i8, @intCast(-127)), 65, @as(i8, @intCast(-127)), 65, @as(i8, @intCast(-127)), 41, @as(i8, @intCast(-127)), @as(i8, @intCast(-31)), 5, 19, 3, 3, 3, 50, 102, 80, 96, 80, 96, @as(i8, @intCast(-6)), @as(i8, @intCast(-63)), 80, @as(i8, @intCast(-64)), @as(i8, @intCast(-64)), @as(i8, @intCast(-76)), @as(i8, @intCast(-118)), 1, 0, 113, 24, 5, 61, 73, @as(i8, @intCast(-68)), @as(i8, @intCast(-100)), 98, 0, 0, 0, 0, 73, 69, 78, 68, @as(i8, @intCast(-82)), 66, 96, @as(i8, @intCast(-126)) })[0..];
        this.radioOn = @constCast(&[_]i8{ @as(i8, @intCast(-119)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, @as(i8, @intCast(-44)), @as(i8, @intCast(-62)), @as(i8, @intCast(-97)), @as(i8, @intCast(-75)), 0, 0, 0, 12, 80, 76, 84, 69, @as(i8, @intCast(-1)), @as(i8, @intCast(-1)), @as(i8, @intCast(-1)), @as(i8, @intCast(-69)), @as(i8, @intCast(-69)), @as(i8, @intCast(-69)), 106, 106, 106, 2, 2, 2, 106, @as(i8, @intCast(-103)), 14, @as(i8, @intCast(-47)), 0, 0, 0, 50, 73, 68, 65, 84, 120, @as(i8, @intCast(-38)), 5, @as(i8, @intCast(-63)), 65, 13, 0, 32, 12, 4, @as(i8, @intCast(-63)), @as(i8, @intCast(-19)), @as(i8, @intCast(-11)), @as(i8, @intCast(-117)), 1, 18, 68, @as(i8, @intCast(-100)), 10, 52, 19, 94, 72, 64, 17, 101, @as(i8, @intCast(-122)), 44, @as(i8, @intCast(-44)), @as(i8, @intCast(-29)), 98, @as(i8, @intCast(-52)), 89, 77, @as(i8, @intCast(-102)), 40, 2, 85, @as(i8, @intCast(-95)), @as(i8, @intCast(-73)), @as(i8, @intCast(-63)), @as(i8, @intCast(-104)), @as(i8, @intCast(-63)), 37, @as(i8, @intCast(-117)), 15, @as(i8, @intCast(-40)), 119, 10, 41, 78, 26, @as(i8, @intCast(-79)), 59, 0, 0, 0, 0, 73, 69, 78, 68, @as(i8, @intCast(-82)), 66, 96, @as(i8, @intCast(-126)) })[0..];
        this.imgMultiOffO = Inheritance.upcast(?*Image, Inheritance.callStatic(Image, "createImage", .{ this.multiOff, 0, @as(i32, @intCast(this.multiOff.len)) }));
        this.imgMultiOnO = Inheritance.upcast(?*Image, Inheritance.callStatic(Image, "createImage", .{ this.multiOn, 0, @as(i32, @intCast(this.multiOn.len)) }));
        this.imgRadioOffO = Inheritance.upcast(?*Image, Inheritance.callStatic(Image, "createImage", .{ this.radioOff, 0, @as(i32, @intCast(this.radioOff.len)) }));
        this.imgRadioOnO = Inheritance.upcast(?*Image, Inheritance.callStatic(Image, "createImage", .{ this.radioOn, 0, @as(i32, @intCast(this.radioOn.len)) }));
        this.imgMultiOff = this.imgMultiOffO;
        this.imgMultiOn = this.imgMultiOnO;
        this.imgRadioOff = this.imgRadioOffO;
        this.imgRadioOn = this.imgRadioOnO;
        this.imageArray = @constCast(&[_]?*Image{ this.imgMultiOff, this.imgMultiOn, this.imgRadioOff, this.imgRadioOn })[0..];
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ChoiceGroupImageFactory {
        return Inheritance.upcast(?*ChoiceGroupImageFactory, ChoiceGroupImageFactory.instance);
    }
    

    pub fn getImageArray(self: *Self) []?*Image {
        return self.imageArray;
    }
    

    pub fn init(self: *Self, imageArray: []?*Image) void {
        self.imgMultiOff = Inheritance.upcast(@TypeOf(self.imgMultiOff), imageArray[@intCast(0)]);
        self.imageArray[@intCast(0)] = Inheritance.upcast(@TypeOf(self.imageArray[@intCast(0)]), self.imgMultiOff);
        self.imgMultiOn = Inheritance.upcast(@TypeOf(self.imgMultiOn), imageArray[@intCast(1)]);
        self.imageArray[@intCast(1)] = Inheritance.upcast(@TypeOf(self.imageArray[@intCast(1)]), self.imgMultiOn);
        self.imgRadioOff = Inheritance.upcast(@TypeOf(self.imgRadioOff), imageArray[@intCast(2)]);
        self.imageArray[@intCast(2)] = Inheritance.upcast(@TypeOf(self.imageArray[@intCast(2)]), self.imgRadioOff);
        self.imgRadioOn = Inheritance.upcast(@TypeOf(self.imgRadioOn), imageArray[@intCast(3)]);
        self.imageArray[@intCast(3)] = Inheritance.upcast(@TypeOf(self.imageArray[@intCast(3)]), self.imgRadioOn);
    }
};

