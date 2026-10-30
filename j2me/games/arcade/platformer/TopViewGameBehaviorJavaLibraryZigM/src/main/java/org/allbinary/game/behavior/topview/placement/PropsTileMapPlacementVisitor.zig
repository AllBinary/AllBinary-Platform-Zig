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
// package org.allbinary.game.behavior.topview.placement

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MyRandomFactory = @import("org/allbinary/game/rand/MyRandomFactory.zig").MyRandomFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TileLayer = @import("org/mapeditor/core/TileLayer.zig").TileLayer;
const TiledMap = @import("org/mapeditor/core/TiledMap.zig").TiledMap;
const TileMapPlacementVisitor = @import("org/allbinary/game/behavior/topview/placement/TileMapPlacementVisitor.zig").TileMapPlacementVisitor;

pub const PropsTileMapPlacementVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor";
    base: TileMapPlacementVisitor = undefined,
    logUtil: ?*LogUtil = null,
    randomFactory: ?*MyRandomFactory = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.randomFactory = Inheritance.upcast(?*MyRandomFactory, MyRandomFactory.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TileMapPlacementVisitor.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn visit(self: *Self, lastMap: ?*TiledMap, mapData: [][]i32) void {
        const layerIndex: i32 = 0;
        const tileLayer: ?*TileLayer = Inheritance.upcast(?*TileLayer, (Inheritance.cast(?*TileLayer, Inheritance.call(lastMap.?, "getLayer", .{ layerIndex }))));
        const mapArray: [][]i32 = tileLayer.?.getMapArray();
        const size: i32 = @as(i32, @intCast(mapData.len));
        const size2: i32 = @as(i32, @intCast(mapData[@intCast(0)].len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            {
                var index2: i32 = 0;
                while (index2 < size2) : (index2 += 1) {
                if (mapArray[@intCast(index)][@intCast(index2)] == 14) {
                } else {
                    _ = Inheritance.call(self, "visit2", .{ mapArray, mapData, index, index2 });
                }
                if (@rem(index, 7) == 0) {
                    if (mapArray[@intCast(index)][@intCast(index2)] == 19) {
                        const randomInt: i32 = Inheritance.call(self.randomFactory.?, "getAbsoluteNextIntAllowZero", .{ 3 });
                        if (randomInt == 0) {
                            mapData[@intCast(index)][@intCast(index2)] = 1;
                        } else if (randomInt == 1) {
                            mapData[@intCast(index)][@intCast(index2)] = 81;
                        } else if (randomInt == 2) {
                            mapData[@intCast(index)][@intCast(index2)] = 97;
                        }
                    } else if (mapArray[@intCast(index)][@intCast(index2)] == 17) {
                        const randomInt: i32 = Inheritance.call(self.randomFactory.?, "getAbsoluteNextIntAllowZero", .{ 3 });
                        if (randomInt == 0) {
                            mapData[@intCast(index)][@intCast(index2)] = 17;
                        } else if (randomInt == 1) {
                            mapData[@intCast(index)][@intCast(index2)] = 81;
                        } else if (randomInt == 2) {
                            mapData[@intCast(index)][@intCast(index2)] = 97;
                        }
                    }
                }
                if (@rem(index2, 7) == 0) {
                    if (mapArray[@intCast(index)][@intCast(index2)] == 34) {
                        const randomInt: i32 = Inheritance.call(self.randomFactory.?, "getAbsoluteNextIntAllowZero", .{ 4 });
                        if (randomInt == 0) {
                            mapData[@intCast(index)][@intCast(index2)] = 33;
                        } else if (randomInt == 1) {
                            mapData[@intCast(index)][@intCast(index2)] = 65;
                        } else if (randomInt == 2) {
                            mapData[@intCast(index)][@intCast(index2)] = 81;
                        } else if (randomInt == 3) {
                            mapData[@intCast(index)][@intCast(index2)] = 97;
                        }
                    }
                }
                }
            }
            }
        }
    }
    

    pub fn visit2(self: *Self, mapArray: [][]i32, mapData: [][]i32, index: i32, index2: i32) void {
        _ = self;
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
        var countX: i32 = 0;
        var countY: i32 = 0;
        var index3: i32 = index - 1;
        {
            var index4: i32 = index2 - 1;
            while (index4 > 0) : (index4 -= 1) {
            index3 -= 1;
            if (index3 < 0 or index4 < 0) {
                return;
            }
            if (mapArray[@intCast(index3)][@intCast(index4)] != 14 or mapData[@intCast(index3)][@intCast(index4)] != 0) {
                if (countX > 10 and countY > 10) {
                    {
                        var index5: i32 = index3 + 1;
                        while (index5 < index - 1) : (index5 += 1) {
                        {
                            var index6: i32 = index4 + 1;
                            while (index6 < index2 - 1) : (index6 += 1) {
                            if (mapArray[@intCast(index5)][@intCast(index6)] != 14 or mapData[@intCast(index5)][@intCast(index6)] != 0) {
                                return;
                            }
                            }
                        }
                        }
                    }
                    const x: i32 = index - (@divTrunc(countX, 2));
                    const y: i32 = index2 - (@divTrunc(countY, 2));
                    if (x >= 0 and y >= 0 and x < @as(i32, @intCast(mapData.len)) and y < @as(i32, @intCast(mapData[@intCast(0)].len))) {
                    }
                }
                return;
            }
            countY += 1;
            countX += 1;
            }
        }
    }
};

