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
// package org.allbinary.logic.visual.media

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MediaData = @import("org/allbinary/logic/visual/media/MediaData.zig").MediaData;

pub const MediaDataFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.media.MediaDataFactory";
    AVI: ?*MediaData = null,
    BMP: ?*MediaData = null,
    CEL: ?*MediaData = null,
    FITS: ?*MediaData = null,
    FLI: ?*MediaData = null,
    GBR: ?*MediaData = null,
    GIF: ?*MediaData = null,
    GIH: ?*MediaData = null,
    JPG: ?*MediaData = null,
    PIX: ?*MediaData = null,
    PNG: ?*MediaData = null,
    PNM: ?*MediaData = null,
    PSD: ?*MediaData = null,
    PSP: ?*MediaData = null,
    PS: ?*MediaData = null,
    SGI: ?*MediaData = null,
    SWF: ?*MediaData = null,
    TGA: ?*MediaData = null,
    TIFF: ?*MediaData = null,
    WMF: ?*MediaData = null,
    var instance: ?*MediaDataFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MediaDataFactory.create();
    }

    fn initFields(this: *Self) void {
        this.AVI = Inheritance.callStatic(MediaData, "create1", .{ String.literal("avi") });
        this.BMP = Inheritance.callStatic(MediaData, "create1", .{ String.literal("bmp") });
        this.CEL = Inheritance.callStatic(MediaData, "create1", .{ String.literal("cel") });
        this.FITS = Inheritance.callStatic(MediaData, "create1", .{ String.literal("fits") });
        this.FLI = Inheritance.callStatic(MediaData, "create1", .{ String.literal("fli") });
        this.GBR = Inheritance.callStatic(MediaData, "create1", .{ String.literal("gbr") });
        this.GIF = Inheritance.callStatic(MediaData, "create1", .{ String.literal("gif") });
        this.GIH = Inheritance.callStatic(MediaData, "create1", .{ String.literal("gih") });
        this.JPG = Inheritance.callStatic(MediaData, "create1", .{ String.literal("jpg") });
        this.PIX = Inheritance.callStatic(MediaData, "create1", .{ String.literal("pix") });
        this.PNG = Inheritance.callStatic(MediaData, "create1", .{ String.literal("png") });
        this.PNM = Inheritance.callStatic(MediaData, "create1", .{ String.literal("pnm") });
        this.PSD = Inheritance.callStatic(MediaData, "create1", .{ String.literal("psd") });
        this.PSP = Inheritance.callStatic(MediaData, "create1", .{ String.literal("psp") });
        this.PS = Inheritance.callStatic(MediaData, "create1", .{ String.literal("ps") });
        this.SGI = Inheritance.callStatic(MediaData, "create1", .{ String.literal("SGI") });
        this.SWF = Inheritance.callStatic(MediaData, "create1", .{ String.literal("swf") });
        this.TGA = Inheritance.callStatic(MediaData, "create1", .{ String.literal("tga") });
        this.TIFF = Inheritance.callStatic(MediaData, "create1", .{ String.literal("tiff") });
        this.WMF = Inheritance.callStatic(MediaData, "create1", .{ String.literal("wmf") });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*MediaDataFactory {
        return Inheritance.upcast(?*MediaDataFactory, MediaDataFactory.instance);
    }
};

