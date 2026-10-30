// Generated Code Do Not Modify
// package org.allbinary.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const SynchObject = @import("org/allbinary/thread/SynchObject.zig").SynchObject;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const ABSystemWrapper = @import("org/allbinary/logic/ABSystemWrapper.zig").ABSystemWrapper;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const Layer = @import("org/allbinary/layer/Layer.zig").Layer;
const LayerManagerLoggingBase = @import("org/allbinary/layer/LayerManagerLoggingBase.zig").LayerManagerLoggingBase;

pub const LayerManager = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.layer.LayerManager";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    systemWrapper: ?*ABSystemWrapper = null,
    tsUtil: ?*TsUtil = null,
    layerManagerLogging: ?*LayerManagerLoggingBase = null,
    list: ?*BasicArrayList = null,
    anyType: ?*SynchObject = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.systemWrapper = Inheritance.upcast(?*ABSystemWrapper, ABSystemWrapper.getInstance());
        this.tsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
        
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.anyType = SynchObject.create();
    }
    

    pub fn create1(layerManagerLogging: ?*LayerManagerLoggingBase) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, this.commonStrings.?.CONSTRUCTOR });
        this.layerManagerLogging = layerManagerLogging;
        return this;
    }
    

    pub fn contains(self: *Self, layerInterface: ?*AllBinaryLayer) bool {
        return Inheritance.call(self.list.?, "contains", .{ layerInterface });
    }
    

    // throws Exception
    pub fn update(self: *Self, layerInterface: ?*AllBinaryLayer) void {
        const had: bool = Inheritance.call(self.list.?, "remove", .{ layerInterface });
        if (had) {
            var nextLayerInterface: ?*AllBinaryLayer = null;
            const size: i32 = self.list.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                nextLayerInterface = Inheritance.cast(?*AllBinaryLayer, Inheritance.call(self.list.?, "get", .{ index }));
                if (Inheritance.receiver(layerInterface.?, "getZP").getZP() > Inheritance.receiver(nextLayerInterface.?, "getZP").getZP()) {
                    _ = Inheritance.call(self.list.?, "addAt", .{ index, layerInterface });
                    return;
                }
                }
            }
            _ = Inheritance.call(self.list.?, "add", .{ layerInterface });
        }
    }
    

    // throws Exception
    pub fn insert(self: *Self, layerInterface: ?*AllBinaryLayer) void {
        var nextLayerInterface: ?*AllBinaryLayer = null;
        const size: i32 = self.list.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            nextLayerInterface = Inheritance.cast(?*AllBinaryLayer, Inheritance.call(self.list.?, "get", .{ index }));
            if (Inheritance.receiver(layerInterface.?, "getZP").getZP() > Inheritance.receiver(nextLayerInterface.?, "getZP").getZP()) {
                _ = Inheritance.call(self, "appendAt", .{ layerInterface, index });
                return;
            }
            }
        }
        _ = Inheritance.call(self, "append", .{ layerInterface });
    }
    

    // throws Exception
    pub fn append(self: *Self, layerInterface: ?*AllBinaryLayer) void {
        _ = Inheritance.call(self.layerManagerLogging.?, "append", .{ layerInterface });
        _ = Inheritance.call(self.list.?, "add", .{ layerInterface });
    }
    

    // throws Exception
    pub fn appendAt(self: *Self, layerInterface: ?*AllBinaryLayer, index: i32) void {
        _ = Inheritance.call(self.layerManagerLogging.?, "appendAt", .{ layerInterface, index });
        _ = Inheritance.call(self.list.?, "addAt", .{ index, layerInterface });
    }
    

    // throws Exception
    pub fn remove(self: *Self, layerInterface: ?*AllBinaryLayer) void {
        {
            const monitor_N67496 = Object.monitor(self.anyType).enter();
            defer monitor_N67496.exit();
            _ = Inheritance.call(self.layerManagerLogging.?, "remove", .{ layerInterface });
            const result: bool = Inheritance.call(self.list.?, "remove", .{ layerInterface });
            _ = Inheritance.call(self.layerManagerLogging.?, "removeResult", .{ self, layerInterface, result });
        }
    }
    

    pub fn getLayerAt(self: *Self, index: i32) ?*Layer {
        return Inheritance.cast(?*Layer, self.list.?.objectArray[@intCast(index)]);
    }
    

    pub fn getSize(self: *Self) i32 {
        return self.list.?.size();
    }
    

    // throws Exception
    pub fn cleanup(self: *Self) void {
        {
            const monitor_N67869 = Object.monitor(self.anyType).enter();
            defer monitor_N67869.exit();
            _ = self.list.?.clear();
            _ = self.layerManagerLogging.?.clear();
            _ = self.tsUtil.?.gc();
            _ = self.tsUtil.?.gc();
        }
    }
    

    pub fn paint(self: *Self, g: ?*Graphics, x: i32, y: i32) void {
        _ = x;
        _ = y;
        {
            const monitor_N68023 = Object.monitor(self.anyType).enter();
            defer monitor_N68023.exit();
            var comp: ?*Layer = null;
            {
                var index: i32 = self.list.?.size();
                while (value_N68215: { index -= 1; break :value_N68215 index; } >= 0) {
                comp = Inheritance.cast(?*Layer, self.list.?.objectArray[@intCast(index)]);
                if (comp != null and comp.?.isVisible()) {
                    _ = Inheritance.call(comp.?, "paint", .{ g });
                }
                }
            }
        }
    }
};

