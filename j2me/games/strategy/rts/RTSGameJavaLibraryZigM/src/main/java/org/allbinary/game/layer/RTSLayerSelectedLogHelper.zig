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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const NamedAngle = @import("org/allbinary/math/NamedAngle.zig").NamedAngle;
const PositionStrings = @import("org/allbinary/math/PositionStrings.zig").PositionStrings;
const GeographicMapCellHistory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellHistory.zig").GeographicMapCellHistory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const RTSLayerLogHelper = @import("org/allbinary/game/layer/RTSLayerLogHelper.zig").RTSLayerLogHelper;

pub const RTSLayerSelectedLogHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.RTSLayerSelectedLogHelper";
    base: RTSLayerLogHelper = undefined,
    logUtil: ?*LogUtil = null,
    commonSeps: ?*CommonSeps = null,
    positionStrings: ?*PositionStrings = null,
    TRACKTO_TURNTO: ?*String = null,
    var instanceC: ?*RTSLayerSelectedLogHelper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = RTSLayerSelectedLogHelper.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.positionStrings = Inheritance.upcast(?*PositionStrings, PositionStrings.getInstance());
        this.TRACKTO_TURNTO = String.literal("trackTo:turnTo");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = RTSLayerLogHelper.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*RTSLayerSelectedLogHelper {
        return Inheritance.upcast(?*RTSLayerSelectedLogHelper, RTSLayerSelectedLogHelper.instanceC);
    }
    

    pub fn setClosestGeographicMapCellHistory(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, pathsList: ?*BasicArrayList) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonLabels.getInstance().?.START });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ pathsList.?.size() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" -> ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ pathsList }) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: setClosestGeographicMapCellHistory") });
    }
    

    pub fn trackTo(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, nextUnvisitedPathGeographicMapCellPosition: ?*GeographicMapCellPosition, dx: i32, dy: i32, reason: ?*String) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ nextUnvisitedPathGeographicMapCellPosition }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.positionStrings.?.DX_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ dx });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.positionStrings.?.DY_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ dy });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ reason });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: trackTo") });
    }
    

    pub fn turnTo(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, dx: i32, dy: i32, angleInfo: ?*AngleInfo, angle: i32, movementAngle: ?*NamedAngle, evading: bool, targetAngle: i32) void {
        _ = targetAngle;
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" steering - ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.positionStrings.?.DX_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ dx });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.positionStrings.?.DY_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ dy });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" angle: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ angle });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" movementAngle: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ movementAngle.?.name });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.FORWARD_SLASH });
        _ = Inheritance.call(stringBuffer.?, "appendshort", .{ @as(i16, @intCast(Inheritance.receiver(movementAngle.?, "getValue").getValue())) });
        if (angleInfo != null) {
            const angleIncrement: i16 = Inheritance.receiverOf(angleInfo.?.getAngleIncrementInfo().?, "getAngleIncrement").getAngleIncrement();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" angleIncrement: ") });
            _ = Inheritance.call(stringBuffer.?, "appendshort", .{ angleIncrement });
        }
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Evading: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ evading });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.TRACKTO_TURNTO });
    }
    

    pub fn doneMoving(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" steering - done moving 0,0") }))), self, self.TRACKTO_TURNTO });
    }
    

    pub fn closeEnough(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" steering - close enough") }))), self, self.TRACKTO_TURNTO });
    }
    

    pub fn movingLeft(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" steering - allow movingLeft") }))), self, self.TRACKTO_TURNTO });
    }
    

    pub fn movingRight(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" steering - allow movingRight") }))), self, self.TRACKTO_TURNTO });
    }
    

    pub fn movingUp(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" steering - allow movingUp") }))), self, self.TRACKTO_TURNTO });
    }
    

    pub fn movingDown(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" steering - allow movingDown") }))), self, self.TRACKTO_TURNTO });
    }
    

    pub fn currentMoveEnded(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" steering - correct angle, but movement not needed for current deltas so reseting movement angle") }))), self, self.TRACKTO_TURNTO });
    }
    

    pub fn evade(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" steering - evade") }))), self, self.TRACKTO_TURNTO });
    }
    

    pub fn rotateLeft(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" steering - rotating left") }))), self, self.TRACKTO_TURNTO });
    }
    

    pub fn rotateRight(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" steering - rotating right") }))), self, self.TRACKTO_TURNTO });
    }
    

    pub fn handle(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, movementAngle: ?*NamedAngle) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" steering - movementAngle: ") }).?, "append", .{ movementAngle.?.name }).?, "append", .{ self.commonSeps.?.FORWARD_SLASH }).?, "appendshort", .{ @as(i16, @intCast(Inheritance.receiver(movementAngle.?, "getValue").getValue())) }))), self, self.TRACKTO_TURNTO });
    }
    

    pub fn noRotation(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" steering - Do not rotate") }))), self, self.TRACKTO_TURNTO });
    }
    

    pub fn notOnPath(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, geographicMapCellHistory: ?*GeographicMapCellHistory, currentGeographicMapCellPosition: ?*GeographicMapCellPosition, pathList: ?*BasicArrayList) void {
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ CommonSeps.getInstance().?.SPACE }).?, "appendint", .{ @as(i32, @intCast(geographicMapCellHistory.?.getTotalVisited())) }).?, "append", .{ CommonSeps.getInstance().?.SPACE }).?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ currentGeographicMapCellPosition }) }).?, "append", .{ String.literal(" - trying to move but not on path: ") }).?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ pathList }) }))), self, String.literal("turnTo") });
    }
};

