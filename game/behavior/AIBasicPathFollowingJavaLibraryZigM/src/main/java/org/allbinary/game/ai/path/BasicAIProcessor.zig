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
// package org.allbinary.game.ai.path

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const DirectionFactory = @import("org/allbinary/direction/DirectionFactory.zig").DirectionFactory;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const GeographicMapCellHistory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellHistory.zig").GeographicMapCellHistory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapDirectionUtil = @import("org/allbinary/media/graphics/geography/map/GeographicMapDirectionUtil.zig").GeographicMapDirectionUtil;
const GeographicMapCellPathHistoryInfo = @import("org/allbinary/media/graphics/geography/pathfinding/GeographicMapCellPathHistoryInfo.zig").GeographicMapCellPathHistoryInfo;
const BasicDirectionAIHelper = @import("org/allbinary/game/ai/path/BasicDirectionAIHelper.zig").BasicDirectionAIHelper;

pub const BasicAIProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ai.path.BasicAIProcessor";
    name: ?*String = null,
    geographicMapCellHistory: ?*GeographicMapCellHistory = null,
    geographicMapCellPositionBasicArrayList: ?*BasicArrayList = null,
    geographicMapCellPathHistoryInfo: ?*GeographicMapCellPathHistoryInfo = null,
    basicAI: ?*BasicDirectionAIHelper = null,
    geographicMapDirectionUtil: ?*GeographicMapDirectionUtil = null,

    fn initFields(this: *Self) void {
        
        
        
        
        
        this.geographicMapDirectionUtil = Inheritance.upcast(?*GeographicMapDirectionUtil, GeographicMapDirectionUtil.getInstance());
    }
    

    pub fn create6(name: ?*String, geographicMapCellHistory: ?*GeographicMapCellHistory, geographicMapCellPathHistoryInfo: ?*GeographicMapCellPathHistoryInfo, chosenPathList: ?*BasicArrayList, angleInfo: ?*AngleInfo, seed: i32) *Self {
        _ = seed;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        this.geographicMapCellHistory = geographicMapCellHistory;
        this.geographicMapCellPositionBasicArrayList = chosenPathList;
        this.geographicMapCellPathHistoryInfo = geographicMapCellPathHistoryInfo;
        _ = Inheritance.call(this, "setName", .{ name });
        _ = Inheritance.call(this, "setNewPath", .{ geographicMapCellHistory, chosenPathList });
        this.basicAI = Inheritance.callStatic(BasicDirectionAIHelper, "create2", .{ this.getName(), angleInfo });
        return this;
    }
    

    pub fn setNewPath(self: *Self, geographicMapCellHistory: ?*GeographicMapCellHistory, chosenPathList: ?*BasicArrayList) void {
        _ = Inheritance.call(self, "setGeographicMapCellHistory", .{ geographicMapCellHistory });
        self.geographicMapCellPositionBasicArrayList = chosenPathList;
        _ = self.init();
    }
    

    pub fn init(self: *Self) void {
        self.geographicMapCellPathHistoryInfo = GeographicMapCellPathHistoryInfo.create();
        _ = Inheritance.call(self.geographicMapCellPathHistoryInfo.?, "setPreviousOnPathGeographicMapCellPosition", .{ Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(self.geographicMapCellPositionBasicArrayList.?, "get", .{ self.geographicMapCellPositionBasicArrayList.?.size() - 1 })) });
        _ = Inheritance.call(self.geographicMapCellPathHistoryInfo.?, "setNextOnPathGeographicMapCellPosition", .{ Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(self.geographicMapCellPositionBasicArrayList.?, "get", .{ self.geographicMapCellPositionBasicArrayList.?.size() - 1 })) });
        _ = self.update();
    }
    

    // throws Exception
    pub fn goTowardNextChosenOnPathPosition(self: *Self, currentGeographicMapCellPosition: ?*GeographicMapCellPosition) i32 {
        var keyDirection: i32 = -1;
        const goToGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, self.geographicMapCellPathHistoryInfo.?.getNextChosenOnPathGeographicMapCellPosition());
        var geographicMapDirectionData: ?*Direction = Inheritance.upcast(?*Direction, Inheritance.call(self.geographicMapDirectionUtil.?, "getDirectionFromCellPositionToAdjacentCellPosition", .{ currentGeographicMapCellPosition, goToGeographicMapCellPosition }));
        if (Object.same(geographicMapDirectionData, DirectionFactory.getInstance().?.NOT_BORDERED_WITH)) {
            geographicMapDirectionData = Inheritance.upcast(@TypeOf(geographicMapDirectionData), Inheritance.call(self.geographicMapDirectionUtil.?, "getDirectionFromCellPositionToCellPosition", .{ currentGeographicMapCellPosition, goToGeographicMapCellPosition }));
        }
        keyDirection = Inheritance.call(self.basicAI.?, "getAIKeyPressedFromDirection", .{ geographicMapDirectionData });
        return keyDirection;
    }
    

    pub fn update(self: *Self) void {
        _ = Inheritance.call(self.geographicMapCellPathHistoryInfo.?, "setNextUnvisitedOnPathGeographicMapCellPosition", .{ Inheritance.receiverOf(self.getGeographicMapCellHistory().?, "getFirstUnvisited").getFirstUnvisited() });
        _ = Inheritance.call(self.geographicMapCellPathHistoryInfo.?, "setNextChosenOnPathGeographicMapCellPosition", .{ self.geographicMapCellPathHistoryInfo.?.getNextUnvisitedOnPathGeographicMapCellPosition() });
    }
    

    // throws Exception
    pub fn processAI(self: *Self, myManager: ?*AllBinaryLayerManager, currentGeographicMapCellPosition: ?*GeographicMapCellPosition) i32 {
        _ = myManager;
        var keyDirection: i32 = -1;
        if (Inheritance.call(self.geographicMapCellPositionBasicArrayList.?, "contains", .{ currentGeographicMapCellPosition })) {
            _ = self.update();
            keyDirection = Inheritance.call(self, "goTowardNextChosenOnPathPosition", .{ currentGeographicMapCellPosition });
            _ = Inheritance.call(self.geographicMapCellPathHistoryInfo.?, "setPreviousOnPathGeographicMapCellPosition", .{ currentGeographicMapCellPosition });
        } else {
            keyDirection = Inheritance.call(self, "goTowardNextChosenOnPathPosition", .{ currentGeographicMapCellPosition });
        }
        return keyDirection;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        self.name = name;
    }
    

    pub fn getGeographicMapCellPathHistoryInfo(self: *Self) ?*GeographicMapCellPathHistoryInfo {
        return self.geographicMapCellPathHistoryInfo;
    }
    

    pub fn setGeographicMapCellPathHistoryInfo(self: *Self, geographicMapCellPathHistoryInfo: ?*GeographicMapCellPathHistoryInfo) void {
        self.geographicMapCellPathHistoryInfo = geographicMapCellPathHistoryInfo;
    }
    

    pub fn getGeographicMapCellHistory(self: *Self) ?*GeographicMapCellHistory {
        return self.geographicMapCellHistory;
    }
    

    pub fn setGeographicMapCellHistory(self: *Self, geographicMapCellHistory: ?*GeographicMapCellHistory) void {
        self.geographicMapCellHistory = geographicMapCellHistory;
    }
};

