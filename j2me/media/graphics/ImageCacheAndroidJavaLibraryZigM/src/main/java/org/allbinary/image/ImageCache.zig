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
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const GDResources = @import("org/allbinary/game/gd/resource/GDResources.zig").GDResources;
const ABSystemWrapper = @import("org/allbinary/logic/ABSystemWrapper.zig").ABSystemWrapper;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Memory = @import("org/allbinary/system/Memory.zig").Memory;
const ImageCacheBase = @import("org/allbinary/image/ImageCacheBase.zig").ImageCacheBase;
const Integer = @import("java/lang/Integer.zig").Integer;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const ImageCache = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.ImageCache";
    base: ImageCacheBase = undefined,
    commonStrings: ?*CommonStrings = null,
    systemWrapper: ?*ABSystemWrapper = null,
    tsUtil: ?*TsUtil = null,
    pub var NULL_IMAGE_CACHE: ?*ImageCache = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_IMAGE_CACHE = ImageCache.create();
    }

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.systemWrapper = Inheritance.upcast(?*ABSystemWrapper, ABSystemWrapper.getInstance());
        this.tsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ImageCacheBase.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn addListener(self: *Self, renderer: ?Object) void {
        _ = renderer;
        _ = self;
    }
    

    pub fn getIndex(self: *Self, key: ?Object) i32 {
        const gdResources: ?*GDResources = Inheritance.upcast(?*GDResources, GDResources.getInstance());
        const resourceStringArray: []?*String = gdResources.?.resourceStringArray;
        const size: i32 = @as(i32, @intCast(resourceStringArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            if (Object.same(resourceStringArray[@intCast(index)], key)) {
                return index;
            }
            }
        }
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("unable to find key: ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ key }) }))), self, self.commonStrings.?.RUN });
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn get(self: *Self, caller: ?*String, width: i32, height: i32) ?*Image {
        var foundIndex: i32 = Inheritance.call(self, "getIndexWH", .{ width, height });
        var image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self, "getFromAvailable", .{ foundIndex, width, height }));
        if (Object.same(image, NullImage.NULL_IMAGE)) {
            Inheritance.fieldPointer(self, "volume").* += width * height;
            if (Inheritance.fieldPointer(self, "volume").* > 32000) {
                _ = self.tsUtil.?.gc();
                Inheritance.fieldPointer(self, "volume").* = 0;
            }
            image = Inheritance.upcast(@TypeOf(image), Inheritance.call(self, "createImage", .{ caller, width, height }));
            if (foundIndex == -1) {
                foundIndex = Inheritance.fieldPointer(self, "nextIndex").*;
                Inheritance.fieldPointer(self, "widths").*[@intCast(Inheritance.fieldPointer(self, "nextIndex").*)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "widths").*[@intCast(Inheritance.fieldPointer(self, "nextIndex").*)]), width);
                Inheritance.fieldPointer(self, "heights").*[@intCast(Inheritance.fieldPointer(self, "nextIndex").*)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "heights").*[@intCast(Inheritance.fieldPointer(self, "nextIndex").*)]), height);
                Inheritance.fieldPointer(self, "nextIndex").* += 1;
            }
            _ = Inheritance.call(Inheritance.fieldPointer(self, "listOfList").*[@intCast(foundIndex)].?, "add", .{ image });
        }
        return image;
    }
    

    // throws Exception
    pub fn getWithKey(self: *Self, key: ?Object) ?*Image {
        const resourceUtil: ?*ResourceUtil = Inheritance.upcast(?*ResourceUtil, ResourceUtil.getInstance());
        const resourceId: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.call(resourceUtil.?, "getResourceId", .{ Inheritance.cast(?*String, key) }));
        var image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self, "getImage", .{ resourceId }));
        if (Object.same(image, NullImage.NULL_IMAGE)) {
            const inputStream: ?*InputStream = Inheritance.upcast(?*InputStream, Inheritance.call(resourceUtil.?, "getResourceAsStream", .{ Inheritance.cast(?*String, key) }));
            { // try
                _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Memory.getInfo(), self, self.commonStrings.?.GET });
                image = Inheritance.upcast(@TypeOf(image), Inheritance.call(self, "createImageFromInputStream", .{ key, inputStream }));
            }
            // catch (Exception e):
//                 _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ String.literal("Exception: Trying Again After GC"), self, self.commonStrings.?.GET, e });
//                 _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("InputStream: ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ inputStream }) }))), self, self.commonStrings.?.GET });
//                 _ = self.tsUtil.?.gc();
//                 _ = self.tsUtil.?.gc();
//                 _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Memory.getInfo(), self, self.commonStrings.?.GET });
//                 _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(100), .awake) catch {});
//                 image = Inheritance.upcast(@TypeOf(image), Inheritance.call(self, "createImageFromInputStream", .{ key, inputStream }));
            _ = inputStream.?.close();
            _ = Inheritance.call(Inheritance.fieldPointer(self, "hashtable").*.?, "put", .{ resourceId, image });
        }
        return image;
    }
    

    pub fn runTask(self: *Self) void {
        _ = self;
    }
    

    pub fn isLazy(self: *Self) bool {
        _ = self;
        return false;
    }
};

