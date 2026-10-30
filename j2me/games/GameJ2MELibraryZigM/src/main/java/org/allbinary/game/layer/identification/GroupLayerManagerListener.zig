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
// package org.allbinary.game.layer.identification

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const GroupInterfaceCompositeInterface = @import("org/allbinary/game/identification/GroupInterfaceCompositeInterface.zig").GroupInterfaceCompositeInterface;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const LayerManagerEvent = @import("org/allbinary/layer/event/LayerManagerEvent.zig").LayerManagerEvent;
const LayerManagerEventHandler = @import("org/allbinary/layer/event/LayerManagerEventHandler.zig").LayerManagerEventHandler;
const LayerManagerEventListener = @import("org/allbinary/layer/event/LayerManagerEventListener.zig").LayerManagerEventListener;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const GroupLayerManagerListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.identification.GroupLayerManagerListener";
    base: LayerManagerEventListener = undefined,
    logUtil: ?*LogUtil = null,
    list: ?*BasicArrayList = null,
    var SINGLETON: ?*GroupLayerManagerListener = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = GroupLayerManagerListener.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn getInstance() ?*GroupLayerManagerListener {
        return Inheritance.upcast(?*GroupLayerManagerListener, GroupLayerManagerListener.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = LayerManagerEventListener.create().*;
        this.initFields();
        _ = Inheritance.call(LayerManagerEventHandler.getInstance().?, "addListener", .{ this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn clear(self: *Self) void {
        var groupList: ?*BasicArrayList = null;
        const size: i32 = self.list.?.size();
        {
            var index: i32 = size - 1;
            while (index >= 0) : (index -= 1) {
            groupList = Inheritance.cast(?*BasicArrayList, self.list.?.objectArray[@intCast(index)]);
            _ = groupList.?.clear();
            }
        }
    }
    

    pub fn getGroupSizeFromInterface(self: *Self, groupInterfaceCompositeInterface: ?*GroupInterfaceCompositeInterface) i32 {
        const groupInterfaceArray: []?*Group = groupInterfaceCompositeInterface.?.getGroupInterface();
        return Inheritance.call(self, "getGroupSize", .{ groupInterfaceArray[@intCast(0)] });
    }
    

    pub fn getGroupSize(self: *Self, groupInterface: ?*Group) i32 {
        const id: i32 = @as(i32, @intCast(groupInterface.?.getGroupId()));
        return Inheritance.call(self, "getGroupSizeById", .{ id });
    }
    

    pub fn getList(self: *Self, groupInterface: ?*Group) ?*BasicArrayList {
        const id: i32 = @as(i32, @intCast(groupInterface.?.getGroupId()));
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getListById", .{ id }));
    }
    

    pub fn getListById(self: *Self, groupId: i32) ?*BasicArrayList {
        const groupList: ?*BasicArrayList = Inheritance.cast(?*BasicArrayList, self.list.?.objectArray[@intCast(groupId)]);
        return groupList;
    }
    

    pub fn getGroupSizeById(self: *Self, groupId: i32) i32 {
        const groupList: ?*BasicArrayList = Inheritance.cast(?*BasicArrayList, self.list.?.objectArray[@intCast(groupId)]);
        const size: i32 = groupList.?.size();
        return size;
    }
    

    pub fn areAllOtherGroupsEmpty(self: *Self, groupInterface: ?*Group) bool {
        const id: i32 = @as(i32, @intCast(groupInterface.?.getGroupId()));
        const size: i32 = self.list.?.size();
        {
            var index: i32 = size - 1;
            while (index >= 0) : (index -= 1) {
            if (id != index) {
                const groupSize: i32 = Inheritance.call(self, "getGroupSizeById", .{ index });
                if (groupSize != 0) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Group Size: ") }).?, "appendint", .{ groupSize }))), self, String.literal("areAllOtherGroupsEmpty") });
                    return false;
                }
            }
            }
        }
        return true;
    }
    

    pub fn isIdInList(self: *Self, id: i32, excludeGroupList: ?*BasicArrayList) bool {
        _ = self;
        const size: i32 = excludeGroupList.?.size();
        var groupInterfaceArray: []?*Group = &.{};
        var groupInterface: ?*Group = null;
        var groupId: i32 = 0;
        {
            var index: i32 = size - 1;
            while (index >= 0) : (index -= 1) {
            groupInterfaceArray = Inheritance.cast([]?*Group, excludeGroupList.?.objectArray[@intCast(index)]);
            const size2: i32 = @as(i32, @intCast(groupInterfaceArray.len));
            {
                var index2: i32 = 0;
                while (index2 < size2) : (index2 += 1) {
                groupInterface = Inheritance.upcast(@TypeOf(groupInterface), groupInterfaceArray[@intCast(index2)]);
                groupId = @as(i32, @intCast(groupInterface.?.getGroupId()));
                if (groupId == id) {
                    return true;
                }
                }
            }
            }
        }
        return false;
    }
    

    pub fn areAllOtherGroupsLessThan(self: *Self, excludeGroupList: ?*BasicArrayList, maxSize: i32) bool {
        const size: i32 = self.list.?.size();
        {
            var index: i32 = size - 1;
            while (index >= 0) : (index -= 1) {
            if (!Inheritance.call(self, "isIdInList", .{ index, excludeGroupList })) {
                const groupSize: i32 = Inheritance.call(self, "getGroupSizeById", .{ index });
                if (groupSize >= maxSize) {
                    return false;
                }
            }
            }
        }
        return true;
    }
    

    pub fn init(self: *Self, total: i32) void {
        while (self.list.?.size() <= total + 1) {
            _ = Inheritance.call(self.list.?, "add", .{ BasicArrayListD.create() });
        }
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    // throws Exception
    pub fn onCreateLayerManagerEvent(self: *Self, layerManagerEvent: ?*LayerManagerEvent) void {
        const layerInterface: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.receiver(layerManagerEvent.?, "getLayerInterface").getLayerInterface());
        const groupInterfaceArray: []?*Group = Inheritance.receiver(layerInterface.?, "getGroupInterface").getGroupInterface();
        const size: i32 = @as(i32, @intCast(groupInterfaceArray.len));
        var id: i32 = 0;
        var groupList: ?*BasicArrayList = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            id = @as(i32, @intCast(groupInterfaceArray[@intCast(index)].?.getGroupId()));
            groupList = Inheritance.cast(?*BasicArrayList, self.list.?.objectArray[@intCast(id)]);
            if (groupList == null) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("id: ") }).?, "appendint", .{ id }))), self, String.literal("onCreateLayerManagerEvent") });
            }
            if (!Inheritance.call(groupList.?, "contains", .{ layerInterface })) {
                _ = Inheritance.call(groupList.?, "add", .{ layerInterface });
            } else {
            }
            }
        }
    }
    

    // throws Exception
    pub fn onDeleteLayerManagerEvent(self: *Self, layerManagerEvent: ?*LayerManagerEvent) void {
        const layerInterface: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.receiver(layerManagerEvent.?, "getLayerInterface").getLayerInterface());
        const groupInterfaceArray: []?*Group = Inheritance.receiver(layerInterface.?, "getGroupInterface").getGroupInterface();
        const size: i32 = @as(i32, @intCast(groupInterfaceArray.len));
        var id: i32 = 0;
        var groupList: ?*BasicArrayList = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            id = @as(i32, @intCast(groupInterfaceArray[@intCast(index)].?.getGroupId()));
            groupList = Inheritance.cast(?*BasicArrayList, self.list.?.objectArray[@intCast(id)]);
            _ = Inheritance.call(groupList.?, "remove", .{ layerInterface });
            }
        }
    }
    

    pub fn log(self: *Self) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const GROUP: ?*String = String.literal("Group: ");
        const SPACE: ?*String = Inheritance.upcast(?*String, CommonSeps.getInstance().?.SPACE);
        const TOTAL_LABEL: ?*String = Inheritance.upcast(?*String, CommonLabels.getInstance().?.TOTAL_LABEL);
        const size: i32 = self.list.?.size();
        {
            var index: i32 = size - 1;
            while (index >= 0) : (index -= 1) {
            const groupList: ?*BasicArrayList = Inheritance.cast(?*BasicArrayList, self.list.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(stringBuffer.?, "append", .{ GROUP });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ index });
            _ = Inheritance.call(stringBuffer.?, "append", .{ SPACE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ TOTAL_LABEL });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ groupList.?.size() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ SPACE });
            }
        }
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("log") });
    }
};

