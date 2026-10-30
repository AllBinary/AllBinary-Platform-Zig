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
// package org.allbinary.media.graphics.geography.map

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const TextAnimation = @import("org/allbinary/animation/text/TextAnimation.zig").TextAnimation;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const GeographicMapCellHistory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.GeographicMapCellHistory";
    logUtil: ?*LogUtil = null,
    booleanFactory: ?*BooleanFactory = null,
    list: ?*BasicArrayList = null,
    visitedList: ?*BasicArrayList = null,
    MISSED_INFO: ?*String = null,
    animation: ?*Animation = null,
    myFontProcessor: ?*MyFontProcessor = null,
    totalVisited: i32 = 0,
    halfWidth: i32 = 0,
    fontHeight: i32 = 0,
    RED: i32 = 0,
    // Implements UpdateMyFontInterface
    pub var NULL_GEOGRPAHIC_MAP_HISTORY_ARRAY: []?*GeographicMapCellHistory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_GEOGRPAHIC_MAP_HISTORY_ARRAY = array_N66107: { const array_N66107_array = allocator.alloc(?*GeographicMapCellHistory, @intCast(0)) catch unreachable; @memset(array_N66107_array, null); break :array_N66107 array_N66107_array; };
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.booleanFactory = Inheritance.upcast(?*BooleanFactory, BooleanFactory.getInstance());
        
        
        this.MISSED_INFO = String.literal("Missed");
        this.animation = Inheritance.upcast(?*Animation, Inheritance.callStatic(TextAnimation, "create2", .{ this.MISSED_INFO, AnimationBehavior.getInstance() }));
        this.myFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.totalVisited = 0;
        this.halfWidth = 0;
        this.fontHeight = 0;
        this.RED = Inheritance.receiverOf(BasicColorFactory.getInstance().?.RED.?, "intValue").intValue();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.list = Inheritance.upcast(@TypeOf(this.list), BasicArrayListD.create());
        this.visitedList = Inheritance.upcast(@TypeOf(this.visitedList), BasicArrayListD.create());
        _ = this.init();
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.fontHeight = font.?.getHeight();
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn getTotalVisited(self: *Self) i32 {
        return self.totalVisited;
    }
    

    pub fn getTotalNotVisited(self: *Self) i32 {
        return self.getSize() - self.totalVisited;
    }
    

    pub fn getSize(self: *Self) i32 {
        return self.list.?.size();
    }
    

    pub fn trackAll(self: *Self, list: ?*BasicArrayList) void {
        const size: i32 = list.?.size();
        _ = Inheritance.call(self.list.?, "ensureCapacity", .{ size });
        _ = Inheritance.call(self.visitedList.?, "ensureCapacity", .{ size });
        var geographicMapCellPosition: ?*GeographicMapCellPosition = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            geographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(list.?, "get", .{ index }));
            _ = Inheritance.call(self, "track", .{ geographicMapCellPosition });
            }
        }
    }
    

    pub fn track(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
        if (!Inheritance.call(self.list.?, "contains", .{ geographicMapCellPosition })) {
            _ = Inheritance.call(self.list.?, "add", .{ geographicMapCellPosition });
            _ = Inheritance.call(self.visitedList.?, "add", .{ self.booleanFactory.?.FALSE });
        }
    }
    

    pub fn getTracked(self: *Self) ?*BasicArrayList {
        return self.list;
    }
    

    pub fn getVisited(self: *Self) ?*BasicArrayList {
        return self.visitedList;
    }
    

    pub fn getAfterIfNotLast(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*GeographicMapCellPosition {
        const localList: ?*BasicArrayList = self.list;
        const index: i32 = Inheritance.call(localList.?, "indexOf", .{ geographicMapCellPosition });
        if (localList.?.size() > index + 1) {
            return Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(localList.?, "get", .{ index + 1 }));
        }
        return geographicMapCellPosition;
    }
    

    pub fn getFirstUnvisited(self: *Self) ?*GeographicMapCellPosition {
        const localList: ?*BasicArrayList = self.list;
        const localVisitedList: ?*BasicArrayList = self.visitedList;
        const size: i32 = localVisitedList.?.size();
        var value: ?*Boolean = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            value = Inheritance.cast(?*Boolean, Inheritance.call(self.visitedList.?, "get", .{ index }));
            if (Object.same(value, self.booleanFactory.?.FALSE)) {
                return Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(localList.?, "get", .{ index }));
            }
            }
        }
        return Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(localList.?, "get", .{ 0 }));
    }
    

    pub fn getFirstUnvisitedIndex(self: *Self) i32 {
        const localVisitedList: ?*BasicArrayList = self.visitedList;
        const size: i32 = localVisitedList.?.size();
        var value: ?*Boolean = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            value = Inheritance.cast(?*Boolean, Inheritance.call(self.visitedList.?, "get", .{ index }));
            if (Object.same(value, self.booleanFactory.?.FALSE)) {
                return index;
            }
            }
        }
        return 0;
    }
    

    pub fn getInPathButNotTracked(self: *Self, pathList: ?*BasicArrayList) ?*BasicArrayList {
        const inPathButNotTrackedList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const localList: ?*BasicArrayList = self.list;
        const size: i32 = pathList.?.size();
        var geographicMapCellPosition: ?*GeographicMapCellPosition = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            geographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(pathList.?, "get", .{ index }));
            if (!Inheritance.call(localList.?, "contains", .{ geographicMapCellPosition })) {
                _ = Inheritance.call(inPathButNotTrackedList.?, "add", .{ geographicMapCellPosition });
            }
            }
        }
        return inPathButNotTrackedList;
    }
    

    pub fn isVisited(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) bool {
        const index: i32 = Inheritance.call(self.list.?, "indexOf", .{ geographicMapCellPosition });
        if (index != -1) {
            const value: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(self.visitedList.?, "get", .{ index }));
            if (Object.same(value, self.booleanFactory.?.TRUE)) {
                return true;
            }
        } else {
        }
        return false;
    }
    

    pub fn visit(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) bool {
        const index: i32 = Inheritance.call(self.list.?, "indexOf", .{ geographicMapCellPosition });
        var value: ?*Boolean = null;
        if (index != -1) {
            value = Inheritance.cast(?*Boolean, Inheritance.call(self.visitedList.?, "get", .{ index }));
            const TRUE: ?*Boolean = Inheritance.upcast(?*Boolean, self.booleanFactory.?.TRUE);
            if (!Object.same(value, TRUE)) {
                _ = Inheritance.call(self.visitedList.?, "set", .{ index, TRUE });
                self.totalVisited += 1;
                return true;
            }
        } else {
        }
        return false;
    }
    

    // throws Exception
    pub fn isAllVisited(self: *Self) bool {
        if (self.totalVisited == self.getSize() - 1) {
            return true;
        } else {
            return false;
        }
    }
    

    // throws Exception
    pub fn isAllVisited2(self: *Self) bool {
        if (self.totalVisited == self.getSize()) {
            return true;
        } else {
            return false;
        }
    }
    

    // throws Exception
    pub fn isPortionVisited(self: *Self, basicDecimal: ?*BasicDecimal) bool {
        const size: i32 = self.getSize();
        const numberRequired: i32 = @divTrunc((size << @intCast(basicDecimal.?.getScaledFactor())), @as(i32, @intCast(basicDecimal.?.getUnscaled())));
        const numberNotVisited: i32 = self.getSize() - 1 - self.totalVisited;
        if (size - numberNotVisited > numberRequired) {
            return true;
        } else {
            return false;
        }
    }
    

    // throws Exception
    pub fn reset(self: *Self) void {
        const localVisitedList: ?*BasicArrayList = self.visitedList;
        const localFalseBoolean: ?*Boolean = Inheritance.upcast(?*Boolean, self.booleanFactory.?.FALSE);
        const size: i32 = localVisitedList.?.size();
        {
            var index: i32 = size - 1;
            while (index >= 0) : (index -= 1) {
            _ = Inheritance.call(localVisitedList.?, "set", .{ index, localFalseBoolean });
            }
        }
        self.totalVisited = 0;
    }
    

    pub fn paintNotVisitedRelativeToPoint(self: *Self, graphics: ?*Graphics, tiledLayer: ?*AllBinaryTiledLayer, point: ?*GPoint) void {
        const x: i32 = point.?.getX() - Inheritance.receiver(tiledLayer.?, "getXP").getXP();
        const y: i32 = point.?.getY() - Inheritance.receiver(tiledLayer.?, "getYP").getYP();
        if (self.halfWidth == 0) {
            self.halfWidth = (Inheritance.call(graphics.?.getFont().?, "stringWidth", .{ self.MISSED_INFO }) >> @intCast(1));
        }
        const height: i32 = 2 * self.fontHeight;
        _ = Inheritance.call(self.animation.?, "paintXY", .{ graphics, x + self.halfWidth, y + (height) });
    }
    

    pub fn paintNotVisited(self: *Self, graphics: ?*Graphics, geographicMapInterface: ?*BasicGeographicMap) void {
        { // try
            _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
            _ = Inheritance.call(graphics.?, "setColor", .{ self.RED });
            const localVisitedList: ?*BasicArrayList = self.visitedList;
            const size: i32 = localVisitedList.?.size();
            var geographicMapCellPosition: ?*GeographicMapCellPosition = null;
            var isCellVisitedBoolean: ?*Boolean = null;
            {
                var index: i32 = size;
                while (value_N71618: { index -= 1; break :value_N71618 index; } >= 0) {
                geographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(self.list.?, "get", .{ index }));
                isCellVisitedBoolean = Inheritance.cast(?*Boolean, Inheritance.call(localVisitedList.?, "get", .{ index }));
                if (!isCellVisitedBoolean.?.booleanValue()) {
                    _ = Inheritance.call(self, "paintNotVisitedRelativeToPoint", .{ graphics, Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer(), Inheritance.receiver(geographicMapCellPosition.?, "getPoint").getPoint() });
                }
                }
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("paintNotVisited"), e });
    }
    

    pub fn init(self: *Self) void {
        _ = self.list.?.clear();
        _ = self.visitedList.?.clear();
        self.totalVisited = 0;
    }
};

