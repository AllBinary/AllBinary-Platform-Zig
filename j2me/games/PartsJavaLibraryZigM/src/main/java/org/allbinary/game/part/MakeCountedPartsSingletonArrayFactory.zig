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
// package org.allbinary.game.part

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CountedPickedUpLayerInterfaceFactory = @import("org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.zig").CountedPickedUpLayerInterfaceFactory;
const CountedPickedUpLayerInterfaceFactoryPool = @import("org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool.zig").CountedPickedUpLayerInterfaceFactoryPool;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const CountedLayerInterfaceFactoryPart = @import("org/allbinary/game/part/CountedLayerInterfaceFactoryPart.zig").CountedLayerInterfaceFactoryPart;
const PartInterface = @import("org/allbinary/game/part/PartInterface.zig").PartInterface;

pub const MakeCountedPartsSingletonArrayFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory";
    logUtil: ?*LogUtil = null,
    list: ?*BasicArrayList = null,
    var instance: ?*MakeCountedPartsSingletonArrayFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MakeCountedPartsSingletonArrayFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.list = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*MakeCountedPartsSingletonArrayFactory {
        return Inheritance.upcast(?*MakeCountedPartsSingletonArrayFactory, MakeCountedPartsSingletonArrayFactory.instance);
    }
    

    // throws Exception
    pub fn getUpdated(self: *Self, partInterfaceArray: []?*PartInterface) []?*PartInterface {
        self.list = Inheritance.upcast(@TypeOf(self.list), BasicArrayListD.create());
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(partInterfaceArray.len))) : (index += 1) {
            _ = Inheritance.call(self.list.?, "add", .{ partInterfaceArray[@intCast(index)] });
            }
        }
        const countedBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(CountedPickedUpLayerInterfaceFactoryPool.getInstance().?, "getList").getList());
        var layerInterfaceFactoryInterface: ?*CountedPickedUpLayerInterfaceFactory = null;
        const size: i32 = countedBasicArrayList.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            layerInterfaceFactoryInterface = Inheritance.cast(?*CountedPickedUpLayerInterfaceFactory, countedBasicArrayList.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(self.list.?, "add", .{ Inheritance.callStatic(CountedLayerInterfaceFactoryPart, "create2", .{ 0, layerInterfaceFactoryInterface }) });
            }
        }
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Total Parts: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.list.?.size() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Counted: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ countedBasicArrayList.?.size() });
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, commonStrings.?.GET_INSTANCE });
        const newPartInterfaceArray: []?*PartInterface = array_N66812: { const array_N66812_array = allocator.alloc(?*PartInterface, @intCast(self.list.?.size())) catch unreachable; @memset(array_N66812_array, null); break :array_N66812 array_N66812_array; };
        const newSize: i32 = @as(i32, @intCast(newPartInterfaceArray.len));
        {
            var index: i32 = 0;
            while (index < newSize) : (index += 1) {
            newPartInterfaceArray[@intCast(index)] = Inheritance.cast(?*PartInterface, Inheritance.call(self.list.?, "get", .{ index }));
            }
        }
        return newPartInterfaceArray;
    }
};

