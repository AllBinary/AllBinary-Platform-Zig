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
// package org.allbinary.input.automation.actions.script.condition

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Color = @import("java/awt/Color.zig").Color;
// const Point = @import("java/awt/Point.zig").Point;
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const ColorCacheFactory = @import("org/allbinary/graphics/color/ColorCacheFactory.zig").ColorCacheFactory;
const ColorCacheable = @import("org/allbinary/graphics/color/ColorCacheable.zig").ColorCacheable;
const CapturedBufferedImagesCacheSingleton = @import("org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton.zig").CapturedBufferedImagesCacheSingleton;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AutomaticCacheInterface = @import("org/allbinary/logic/util/cache/AutomaticCacheInterface.zig").AutomaticCacheInterface;
const ColorRange = @import("org/allbinary/media/image/analysis/ColorRange.zig").ColorRange;
const ColorRangeInterface = @import("org/allbinary/media/image/analysis/ColorRangeInterface.zig").ColorRangeInterface;
const BufferedImageFrameCacheable = @import("org/allbinary/media/image/cache/BufferedImageFrameCacheable.zig").BufferedImageFrameCacheable;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const BasicProfileActionScriptCondition = @import("org/allbinary/input/automation/actions/script/condition/BasicProfileActionScriptCondition.zig").BasicProfileActionScriptCondition;
const ColorAtActionScriptConditionData = @import("org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptConditionData.zig").ColorAtActionScriptConditionData;
const ColorAtActionScriptConditionInterface = @import("org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptConditionInterface.zig").ColorAtActionScriptConditionInterface;
const ColorAtActionScriptConditionJPanel = @import("org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptConditionJPanel.zig").ColorAtActionScriptConditionJPanel;
const Integer = @import("java/lang/Integer.zig").Integer;
const Long = @import("java/lang/Long.zig").Long;

pub const ColorAtActionScriptCondition = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition";
    pub const java_interfaces = .{ ColorAtActionScriptConditionInterface };
    base: BasicProfileActionScriptCondition = undefined,
    logUtil: ?*LogUtil = null,
    colorAtActionScriptConditionJPanel: ?*ColorAtActionScriptConditionJPanel = null,
    point: ?*Point = null,
    colorRangeInterface: ?*ColorRangeInterface = null,
    // Implements ColorAtActionScriptConditionInterface
    const NAME: ?*String = String.literal("If Color At");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.colorAtActionScriptConditionJPanel = null;
        
        this.colorRangeInterface = Inheritance.cast(?*ColorRangeInterface, ColorRange.create());
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicProfileActionScriptCondition, "create2", .{ ColorAtActionScriptCondition.NAME, node }).*;
        this.initFields();
        this.point = Inheritance.callStatic(Point, "create2", .{ 0, 0 });
        const actionNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ ColorAtActionScriptConditionData.NAME, node.?.getChildNodes() }));
        if (actionNode != null) {
            const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, actionNode.?.getChildNodes());
            {
                var index: i32 = 0;
                while (index < nodeList.?.getLength()) : (index += 1) {
                const childNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
                if (Inheritance.call(childNode.?.getNodeName().?, "compareTo", .{ ColorAtActionScriptConditionData.LOCATION_X }) == 0) {
                    const locationX: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ childNode }));
                    this.point.?.x = Inheritance.upcast(@TypeOf(this.point.?.x), Inheritance.callStatic(Integer, "valueOf", .{ locationX }));
                } else if (Inheritance.call(childNode.?.getNodeName().?, "compareTo", .{ ColorAtActionScriptConditionData.LOCATION_Y }) == 0) {
                    const locationY: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ childNode }));
                    this.point.?.y = Inheritance.upcast(@TypeOf(this.point.?.y), Inheritance.callStatic(Integer, "valueOf", .{ locationY }));
                } else if (Inheritance.call(childNode.?.getNodeName().?, "compareTo", .{ ColorAtActionScriptConditionData.MIN_RED }) == 0) {
                    const string: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ childNode }));
                    _ = Inheritance.call(this.getColorRangeInterface().?, "setMinRed", .{ Inheritance.callStatic(Integer, "valueOf", .{ string }) });
                } else if (Inheritance.call(childNode.?.getNodeName().?, "compareTo", .{ ColorAtActionScriptConditionData.MAX_RED }) == 0) {
                    const string: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ childNode }));
                    _ = Inheritance.call(this.getColorRangeInterface().?, "setMaxRed", .{ Inheritance.callStatic(Integer, "valueOf", .{ string }) });
                } else if (Inheritance.call(childNode.?.getNodeName().?, "compareTo", .{ ColorAtActionScriptConditionData.MIN_GREEN }) == 0) {
                    const string: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ childNode }));
                    _ = Inheritance.call(this.getColorRangeInterface().?, "setMinGreen", .{ Inheritance.callStatic(Integer, "valueOf", .{ string }) });
                } else if (Inheritance.call(childNode.?.getNodeName().?, "compareTo", .{ ColorAtActionScriptConditionData.MAX_GREEN }) == 0) {
                    const string: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ childNode }));
                    _ = Inheritance.call(this.getColorRangeInterface().?, "setMaxGreen", .{ Inheritance.callStatic(Integer, "valueOf", .{ string }) });
                } else if (Inheritance.call(childNode.?.getNodeName().?, "compareTo", .{ ColorAtActionScriptConditionData.MIN_BLUE }) == 0) {
                    const string: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ childNode }));
                    _ = Inheritance.call(this.getColorRangeInterface().?, "setMinBlue", .{ Inheritance.callStatic(Integer, "valueOf", .{ string }) });
                } else if (Inheritance.call(childNode.?.getNodeName().?, "compareTo", .{ ColorAtActionScriptConditionData.MAX_BLUE }) == 0) {
                    const string: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ childNode }));
                    _ = Inheritance.call(this.getColorRangeInterface().?, "setMaxBlue", .{ Inheritance.callStatic(Integer, "valueOf", .{ string }) });
                }
                }
            }
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Color At Action Script Condition Node Null"); break :exception error.Exception; }});
        }
        _ = this.init();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicProfileActionScriptCondition, "create1", .{ ColorAtActionScriptCondition.NAME }).*;
        this.initFields();
        this.point = Inheritance.callStatic(Point, "create2", .{ 0, 0 });
        _ = this.init();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self) void {
        self.colorAtActionScriptConditionJPanel = Inheritance.callStatic(ColorAtActionScriptConditionJPanel, "create1", .{ self });
    }
    

    pub fn getPoint(self: *Self) ?*Point {
        return self.point;
    }
    

    pub fn setPoint(self: *Self, point: ?*Point) void {
        self.point = point;
    }
    

    pub fn showDialog(self: *Self) void {
        _ = Inheritance.call(Inheritance.receiver(self.colorAtActionScriptConditionJPanel.?, "getColorAtActionJDialog").getColorAtActionJDialog().?, "setVisible", .{ true });
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ ColorAtActionScriptConditionData.LOCATION_X, String.valueOf(self.getPoint().?.x) });
        _ = Inheritance.call(hashMap.?, "put", .{ ColorAtActionScriptConditionData.LOCATION_Y, String.valueOf(self.getPoint().?.y) });
        _ = Inheritance.call(hashMap.?, "put", .{ ColorAtActionScriptConditionData.MIN_RED, String.valueOf(Inheritance.receiverOf(self.getColorRangeInterface().?, "getMinRed").getMinRed()) });
        _ = Inheritance.call(hashMap.?, "put", .{ ColorAtActionScriptConditionData.MAX_RED, String.valueOf(Inheritance.receiverOf(self.getColorRangeInterface().?, "getMaxRed").getMaxRed()) });
        _ = Inheritance.call(hashMap.?, "put", .{ ColorAtActionScriptConditionData.MIN_GREEN, String.valueOf(Inheritance.receiverOf(self.getColorRangeInterface().?, "getMinGreen").getMinGreen()) });
        _ = Inheritance.call(hashMap.?, "put", .{ ColorAtActionScriptConditionData.MAX_GREEN, String.valueOf(Inheritance.receiverOf(self.getColorRangeInterface().?, "getMaxGreen").getMaxGreen()) });
        _ = Inheritance.call(hashMap.?, "put", .{ ColorAtActionScriptConditionData.MIN_BLUE, String.valueOf(Inheritance.receiverOf(self.getColorRangeInterface().?, "getMinBlue").getMinBlue()) });
        _ = Inheritance.call(hashMap.?, "put", .{ ColorAtActionScriptConditionData.MAX_BLUE, String.valueOf(Inheritance.receiverOf(self.getColorRangeInterface().?, "getMaxBlue").getMaxBlue()) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("HashMap: "), Object.toString(Object.of(hashMap))), self, String.literal("toHashMap()") });
        return hashMap;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(&self.base, "toXmlNode", .{ document }));
        _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNodeWithValueNodes", .{ document, ColorAtActionScriptConditionData.NAME, self.toHashMap() }) });
        return node;
    }
    

    // throws Exception
    pub fn shouldProcess(self: *Self, frame: i64) bool {
        const capturedBufferedImageCacheable: ?*BufferedImageFrameCacheable = Inheritance.cast(?*BufferedImageFrameCacheable, Inheritance.call((Inheritance.cast(?*AutomaticCacheInterface, CapturedBufferedImagesCacheSingleton.getInstance())).?, "get", .{ Inheritance.callStatic(Long, "valueOf", .{ frame }) }));
        const bufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, capturedBufferedImageCacheable.?.getBufferedImage());
        const automaticCacheInterface: ?*AutomaticCacheInterface = Inheritance.upcast(?*AutomaticCacheInterface, ColorCacheFactory.getInstance());
        const colorInteger: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.callStatic(Integer, "valueOf", .{ Inheritance.call(bufferedImage.?, "getRGB", .{ self.getPoint().?.x, self.getPoint().?.y }) }));
        const colorCacheable: ?*ColorCacheable = Inheritance.cast(?*ColorCacheable, Inheritance.call(automaticCacheInterface.?, "get", .{ colorInteger }));
        const color: ?*Color = Inheritance.upcast(?*Color, colorCacheable.?.getColor());
        if (Inheritance.call(self.colorRangeInterface.?, "isInRange", .{ color })) {
            return Inheritance.call(&self.base, "shouldProcess", .{ frame });
        }
        return false;
    }
    

    pub fn log(self: *Self) void {
        const message: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("getPoint(): ") }).?, "append", .{ Object.toString(Object.of(self.getPoint())) }).?, "append", .{ CommonSeps.getInstance().?.NEW_LINE }).?, "append", .{ Object.toString(Object.of(self.getColorRangeInterface())) }))));
        _ = Inheritance.call(self.logUtil.?, "putF", .{ message, self, String.literal("log") });
    }
    

    pub fn getColorRangeInterface(self: *Self) ?*ColorRangeInterface {
        return self.colorRangeInterface;
    }
    

    pub fn setColorRangeInterface(self: *Self, colorRangeInterface: ?*ColorRangeInterface) void {
        self.colorRangeInterface = colorRangeInterface;
    }
};

