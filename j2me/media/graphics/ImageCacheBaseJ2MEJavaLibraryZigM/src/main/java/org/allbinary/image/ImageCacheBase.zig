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
// package org.allbinary.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const ImageFactory = @import("org/allbinary/image/ImageFactory.zig").ImageFactory;

pub const ImageCacheBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.ImageCacheBase";
    logUtil: ?*LogUtil = null,
    imageFactory: ?*ImageFactory = null,
    hashtable: ?*ABHashtable = null,
    SIZE: i32 = 0,
    widths: []i32 = &.{},
    heights: []i32 = &.{},
    listOfList: []?*BasicArrayList = &.{},
    availableListOfList: []?*BasicArrayList = &.{},
    volume: i32 = 0,
    nextIndex: i32 = 0,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.imageFactory = Inheritance.upcast(?*ImageFactory, ImageFactory.getInstance());
        this.hashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        this.SIZE = 128;
        this.widths = array_N66093: { const array_N66093_array = allocator.alloc(i32, @intCast(this.SIZE)) catch unreachable; @memset(array_N66093_array, 0); break :array_N66093 array_N66093_array; };
        this.heights = array_N66154: { const array_N66154_array = allocator.alloc(i32, @intCast(this.SIZE)) catch unreachable; @memset(array_N66154_array, 0); break :array_N66154 array_N66154_array; };
        this.listOfList = array_N66215: { const array_N66215_array = allocator.alloc(?*BasicArrayList, @intCast(this.SIZE)) catch unreachable; @memset(array_N66215_array, null); break :array_N66215 array_N66215_array; };
        this.availableListOfList = array_N66284: { const array_N66284_array = allocator.alloc(?*BasicArrayList, @intCast(this.SIZE)) catch unreachable; @memset(array_N66284_array, null); break :array_N66284 array_N66284_array; };
        this.volume = 0;
        this.nextIndex = 0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        {
            var index: i32 = @as(i32, @intCast(this.listOfList.len)) - 1;
            while (index >= 0) : (index -= 1) {
            this.listOfList[@intCast(index)] = Inheritance.upcast(@TypeOf(this.listOfList[@intCast(index)]), BasicArrayListD.create());
            }
        }
        {
            var index: i32 = @as(i32, @intCast(this.availableListOfList.len)) - 1;
            while (index >= 0) : (index -= 1) {
            this.availableListOfList[@intCast(index)] = Inheritance.upcast(@TypeOf(this.availableListOfList[@intCast(index)]), BasicArrayListD.create());
            }
        }
        return this;
    }
    

    pub fn getImage(self: *Self, resourceId: ?Object) ?*Image {
        const imageCanBeNull: ?Object = Inheritance.upcast(?Object, Inheritance.call(self.hashtable.?, "get", .{ resourceId }));
        if (imageCanBeNull == null) {
            return Inheritance.upcast(?*Image, NullImage.NULL_IMAGE);
        }
        return Inheritance.cast(?*Image, imageCanBeNull);
    }
    

    pub fn releaseAll(self: *Self) void {
        {
            var index: i32 = @as(i32, @intCast(self.listOfList.len)) - 1;
            while (index >= 0) : (index -= 1) {
            _ = self.availableListOfList[@intCast(index)].?.clear();
            _ = Inheritance.call(self.availableListOfList[@intCast(index)].?, "addAllList", .{ self.listOfList[@intCast(index)] });
            }
        }
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("ImageCache: ") }).?, "append", .{ Object.toString(Object.of(self)) }))), self, String.literal("releaseAll") });
    }
    

    pub fn getIndexWH(self: *Self, width: i32, height: i32) i32 {
        var foundIndex: i32 = -1;
        const size: i32 = @as(i32, @intCast(self.widths.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            if (self.widths[@intCast(index)] == width and self.heights[@intCast(index)] == height) {
                foundIndex = index;
                return foundIndex;
            }
            }
        }
        return foundIndex;
    }
    

    pub fn getFromAvailable(self: *Self, foundIndex: i32, width: i32, height: i32) ?*Image {
        _ = width;
        _ = height;
        if (foundIndex != -1) {
            if (self.availableListOfList[@intCast(foundIndex)].?.size() > 0) {
                const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.availableListOfList[@intCast(foundIndex)]);
                return Inheritance.cast(?*Image, Inheritance.call(list.?, "removeAt", .{ list.?.size() - 1 }));
            }
        }
        return Inheritance.upcast(?*Image, NullImage.NULL_IMAGE);
    }
    

    // throws Exception
    pub fn get(self: *Self, caller: ?*String, width: i32, height: i32) ?*Image {
        _ = caller;
        _ = width;
        _ = height;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn getWithKey(self: *Self, key: ?Object) ?*Image {
        _ = key;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn createImage(self: *Self, caller: ?*String, width: i32, height: i32) ?*Image {
        return Inheritance.upcast(?*Image, Inheritance.call(self.imageFactory.?, "createImage", .{ caller, width, height }));
    }
    

    // throws Exception
    pub fn createImageFromInputStream(self: *Self, key: ?Object, inputStream: ?*InputStream) ?*Image {
        return Inheritance.upcast(?*Image, Inheritance.call(self.imageFactory.?, "createImageFromInputStream", .{ key, inputStream }));
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        {
            var index: i32 = self.nextIndex - 1;
            while (index >= 0) : (index -= 1) {
            const width: i32 = self.widths[@intCast(index)];
            const height: i32 = self.heights[@intCast(index)];
            const total: i32 = self.listOfList[@intCast(index)].?.size();
            const totalAvailable: i32 = self.availableListOfList[@intCast(index)].?.size();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" w: ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ width });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" h: ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ height });
            _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ CommonLabels.getInstance().?.TOTAL_LABEL });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ total });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" available: ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ totalAvailable });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getHashtableP(self: *Self) ?*ABHashtable {
        return self.hashtable;
    }
    

    pub fn init(self: *Self, image: ?*Image) void {
        _ = image;
        _ = self;
    }
    

    pub fn initProgress(self: *Self) void {
        _ = self;
    }
};

