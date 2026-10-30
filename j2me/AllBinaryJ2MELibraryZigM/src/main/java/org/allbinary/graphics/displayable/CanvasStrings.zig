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
// package org.allbinary.graphics.displayable

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;

pub const CanvasStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.displayable.CanvasStrings";
    CONSTRUCTOR: ?*String = null,
    PAUSE: ?*String = null,
    UN_PAUSE: ?*String = null,
    SET_FULL_SCREEN_MODE: ?*String = null,
    SIZE_CHANGED: ?*String = null,
    SCALED_IMAGES: ?*String = null,
    PAINT: ?*String = null,
    ON_DISPLAY_CHANGE_EVENT: ?*String = null,
    UPDATE_MEASUREMENT: ?*String = null,
    FD_WIDTH: ?*String = null,
    FD_HEIGHT: ?*String = null,
    EMPTY_CHILD_NAME_LIST: ?*BasicArrayList = null,
    ABOUT: ?*String = null,
    OPTIONS: ?*String = null,
    FONT_ATLAS: ?*String = null,
    OBJ_MODEL: ?*String = null,
    MD2_MODEL: ?*String = null,
    _PNG: ?*String = null,
    var instance: ?*CanvasStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CanvasStrings.create();
    }

    fn initFields(this: *Self) void {
        this.CONSTRUCTOR = String.literal("MyCanvas::MyCanvas");
        this.PAUSE = String.literal("MyCanvas::pause");
        this.UN_PAUSE = String.literal("MyCanvas::unPause");
        this.SET_FULL_SCREEN_MODE = String.literal("setFullScreenMode");
        this.SIZE_CHANGED = String.literal("sizeChanged");
        this.SCALED_IMAGES = String.literal("scaledImages");
        this.PAINT = String.literal("paint");
        this.ON_DISPLAY_CHANGE_EVENT = String.literal("onDisplayChangeEvent");
        this.UPDATE_MEASUREMENT = String.literal("updateMeasurement");
        this.FD_WIDTH = String.literal(" font/display width: ");
        this.FD_HEIGHT = String.literal(" font/display height: ");
        this.EMPTY_CHILD_NAME_LIST = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
        this.ABOUT = String.literal("About");
        this.OPTIONS = String.literal("Options");
        this.FONT_ATLAS = String.literal("/font.png");
        this.OBJ_MODEL = String.literal("_obj");
        this.MD2_MODEL = String.literal("_md2");
        this._PNG = String.literal(".png");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*CanvasStrings {
        return Inheritance.upcast(?*CanvasStrings, CanvasStrings.instance);
    }
};

