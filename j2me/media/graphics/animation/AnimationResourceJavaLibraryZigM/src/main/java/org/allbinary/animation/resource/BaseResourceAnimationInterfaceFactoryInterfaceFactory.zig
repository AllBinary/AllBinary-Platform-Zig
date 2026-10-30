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
// package org.allbinary.animation.resource

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/BasicAnimationInterfaceFactoryInterface.zig").BasicAnimationInterfaceFactoryInterface;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const ResourceLoadingLevelFactory = @import("org/allbinary/game/resource/ResourceLoadingLevelFactory.zig").ResourceLoadingLevelFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const RectangleFactory = @import("org/allbinary/graphics/RectangleFactory.zig").RectangleFactory;
const ImageCache = @import("org/allbinary/image/ImageCache.zig").ImageCache;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const FeatureResourceAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/resource/FeatureResourceAnimationInterfaceFactoryInterface.zig").FeatureResourceAnimationInterfaceFactoryInterface;

pub const BaseResourceAnimationInterfaceFactoryInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory";
    pub const java_interfaces = .{ FeatureResourceAnimationInterfaceFactoryInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    hashtable: ?*ABHashtable = null,
    rectangleHashtable: ?*ABHashtable = null,
    rectangleArrayOfArraysHashtable: ?*ABHashtable = null,
    name: ?*String = null,
    initialized: bool = false,
    // Implements FeatureResourceAnimationInterfaceFactoryInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        
        
        this.initialized = false;
    }
    

    pub fn create4(name: ?*String, hashtable: ?*ABHashtable, rectangleHashtable: ?*ABHashtable, rectangleArrayHashtable: ?*ABHashtable) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.hashtable = hashtable;
        this.rectangleHashtable = rectangleHashtable;
        this.rectangleArrayOfArraysHashtable = rectangleArrayHashtable;
        this.name = name;
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    // throws Exception
    pub fn init(self: *Self, level: i32) void {
        _ = level;
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Available List of Animations: ") }).?, "append", .{ Object.toString(Object.of(self.hashtable)) }))), self, commonStrings.?.INIT });
        _ = Inheritance.call(self, "setInitialized", .{ true });
    }
    

    // throws Exception
    pub fn initImageCache(self: *Self, imageCache: ?*ImageCache, level: i32) void {
        _ = imageCache;
        _ = level;
        _ = self;
    }
    

    // throws Exception
    pub fn add(self: *Self, resource: ?*String, animationInterfaceFactoryInterface: ?*BasicAnimationInterfaceFactoryInterface) void {
        if (Inheritance.call(self.hashtable.?, "containsKey", .{ Inheritance.cast(?Object, resource) })) {
            std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Resource Already Created: ") }).?, "append", .{ resource }))); break :exception error.Exception; }});
        }
        _ = Inheritance.call(self.hashtable.?, "put", .{ resource, animationInterfaceFactoryInterface });
    }
    

    // throws Exception
    pub fn getBasicAnimationInterfaceFactoryInstance(self: *Self, resource: ?*String) ?*BasicAnimationInterfaceFactoryInterface {
        const basicAnimationInterfaceFactoryInterfaceCanBeNull: ?Object = Inheritance.upcast(?Object, Inheritance.call(self.hashtable.?, "get", .{ resource }));
        if (basicAnimationInterfaceFactoryInterfaceCanBeNull == null) {
            return Inheritance.upcast(?*BasicAnimationInterfaceFactoryInterface, NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY);
        }
        return Inheritance.cast(?*BasicAnimationInterfaceFactoryInterface, basicAnimationInterfaceFactoryInterfaceCanBeNull);
    }
    

    // throws Exception
    pub fn getRectangle(self: *Self, resource: ?*String) ?*Rectangle {
        const rectangleCanBeNull: ?Object = Inheritance.upcast(?Object, Inheritance.call(self.rectangleHashtable.?, "get", .{ resource }));
        if (rectangleCanBeNull == null) {
            return Inheritance.upcast(?*Rectangle, RectangleFactory.SINGLETON);
        }
        return Inheritance.cast(?*Rectangle, rectangleCanBeNull);
    }
    

    // throws Exception
    pub fn addRectangle(self: *Self, resource: ?*String, rectangle: ?*Rectangle) void {
        _ = Inheritance.call(self.rectangleHashtable.?, "put", .{ resource, rectangle });
    }
    

    // throws Exception
    pub fn getRectangleArrayOfArrays(self: *Self, resource: ?*String) [][]?*Rectangle {
        const valueCanBeNull: ?Object = Inheritance.upcast(?Object, Inheritance.call(self.rectangleArrayOfArraysHashtable.?, "get", .{ resource }));
        if (valueCanBeNull != null) {
            const rectangleArrayOfArrays: [][]?*Rectangle = Inheritance.cast([][]?*Rectangle, valueCanBeNull);
            return rectangleArrayOfArrays;
        } else {
            return RectangleFactory.ARRAY_OF_ARRAYS;
        }
    }
    

    // throws Exception
    pub fn addRectangleArrayOfArrays(self: *Self, resource: ?*String, rectangleArrayOfArrays: [][]?*Rectangle) void {
        _ = Inheritance.call(self.rectangleArrayOfArraysHashtable.?, "put", .{ resource, rectangleArrayOfArrays });
    }
    

    pub fn isFeature(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn isLoadingLevel(self: *Self, level: i32) bool {
        _ = self;
        const resourceLoadingLevelFactory: ?*ResourceLoadingLevelFactory = Inheritance.upcast(?*ResourceLoadingLevelFactory, ResourceLoadingLevelFactory.getInstance());
        if (level == Inheritance.receiverOf(resourceLoadingLevelFactory.?.LOAD_ALL.?, "getLevel").getLevel()) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name) }).?, "append", .{ CommonSeps.getInstance().?.SEMICOLON }).?, "append", .{ CommonSeps.getInstance().?.SPACE }).?, "append", .{ self.name }))));
    }
    

    pub fn getHashtable(self: *Self) ?*ABHashtable {
        return self.hashtable;
    }
    

    pub fn getRectangleHashtable(self: *Self) ?*ABHashtable {
        return self.rectangleHashtable;
    }
    

    pub fn getRectangleArrayOfArraysHashtable(self: *Self) ?*ABHashtable {
        return self.rectangleArrayOfArraysHashtable;
    }
    

    pub fn setInitialized(self: *Self, initialized: bool) void {
        self.initialized = initialized;
    }
    

    pub fn isInitialized(self: *Self) bool {
        return self.initialized;
    }
};

