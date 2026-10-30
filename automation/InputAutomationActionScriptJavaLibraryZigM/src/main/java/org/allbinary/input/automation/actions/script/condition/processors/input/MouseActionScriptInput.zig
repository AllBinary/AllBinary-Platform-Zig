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
// package org.allbinary.input.automation.actions.script.condition.processors.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const InputEvent = @import("java/awt/event/InputEvent.zig").InputEvent;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const BasicProfileActionScriptInput = @import("org/allbinary/input/automation/actions/script/condition/processors/input/BasicProfileActionScriptInput.zig").BasicProfileActionScriptInput;
const MouseActionScriptInputData = @import("org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInputData.zig").MouseActionScriptInputData;
const MouseActionScriptInputInterface = @import("org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInputInterface.zig").MouseActionScriptInputInterface;
const MouseActionScriptInputJPanel = @import("org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInputJPanel.zig").MouseActionScriptInputJPanel;
const MouseInputAutomationProcessor = @import("org/allbinary/input/automation/actions/script/condition/processors/input/MouseInputAutomationProcessor.zig").MouseInputAutomationProcessor;
const Integer = @import("java/lang/Integer.zig").Integer;
const Long = @import("java/lang/Long.zig").Long;

pub const MouseActionScriptInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput";
    pub const java_interfaces = .{ MouseActionScriptInputInterface };
    base: BasicProfileActionScriptInput = undefined,
    logUtil: ?*LogUtil = null,
    point: ?*Point = null,
    buttons: i32 = 0,
    mouseActionScriptInputJPanel: ?*MouseActionScriptInputJPanel = null,
    // Implements MouseActionScriptInputInterface
    const NAME: ?*String = String.literal("Mouse");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.buttons = 0;
        
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicProfileActionScriptInput, "create2", .{ MouseActionScriptInput.NAME, node }).*;
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        this.point = Point.create();
        const actionNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ MouseActionScriptInputData.NAME, node.?.getChildNodes() }));
        if (actionNode != null) {
            const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, actionNode.?.getChildNodes());
            {
                var index: i32 = 0;
                while (index < nodeList.?.getLength()) : (index += 1) {
                const childNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
                if (Inheritance.call(childNode.?.getNodeName().?, "compareTo", .{ MouseActionScriptInputData.BUTTONS }) == 0) {
                    const buttons: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ childNode }));
                    _ = Inheritance.call(this, "setButtonClicks", .{ Inheritance.receiverOf(Inheritance.callStatic(Integer, "valueOf", .{ buttons }).?, "intValue").intValue() });
                } else if (Inheritance.call(childNode.?.getNodeName().?, "compareTo", .{ MouseActionScriptInputData.MOVE }) == 0) {
                    const mouseXNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ MouseActionScriptInputData.MOVE_X, childNode.?.getChildNodes() }));
                    const mouseXString: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ mouseXNode }));
                    const mouseXInteger: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.callStatic(Integer, "valueOf", .{ mouseXString }));
                    const mouseYNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ MouseActionScriptInputData.MOVE_Y, childNode.?.getChildNodes() }));
                    const mouseYString: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ mouseYNode }));
                    const mouseYInteger: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.callStatic(Integer, "valueOf", .{ mouseYString }));
                    const newPoint: ?*Point = Inheritance.callStatic(Point, "create2", .{ mouseXInteger.?.intValue(), mouseYInteger.?.intValue() });
                    _ = Inheritance.call(this, "setPoint", .{ newPoint });
                } else {
                    std.debug.panic("{any}", .{exception: { _ = String.literal("Action Script Input Unknown Node"); break :exception error.Exception; }});
                }
                }
            }
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Action Script Input Node Null"); break :exception error.Exception; }});
        }
        _ = Inheritance.call(this, "setAllowsChildren", .{ false });
        this.mouseActionScriptInputJPanel = Inheritance.callStatic(MouseActionScriptInputJPanel, "create1", .{ this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicProfileActionScriptInput, "create1", .{ MouseActionScriptInput.NAME }).*;
        this.initFields();
        this.point = Point.create();
        _ = Inheritance.call(this, "setAllowsChildren", .{ false });
        this.mouseActionScriptInputJPanel = Inheritance.callStatic(MouseActionScriptInputJPanel, "create1", .{ this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setPoint(self: *Self, point: ?*Point) void {
        self.point = point;
    }
    

    pub fn getPoint(self: *Self) ?*Point {
        return self.point;
    }
    

    pub fn getButtonClicks(self: *Self) i32 {
        return self.buttons;
    }
    

    pub fn setButtonClicks(self: *Self, buttons: i32) void {
        self.buttons = buttons;
    }
    

    pub fn showDialog(self: *Self) void {
        _ = Inheritance.call(Inheritance.receiver(self.mouseActionScriptInputJPanel.?, "getMouseActionJDialog").getMouseActionJDialog().?, "setVisible", .{ true });
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ MouseActionScriptInputData.BUTTONS, String.valueOf(self.getButtonClicks()) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("HashMap: "), Object.toString(Object.of(hashMap))), self, String.literal("toHashMap()") });
        return hashMap;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(&self.base, "toXmlNode", .{ document }));
        const mouseNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNodeWithValueNodes", .{ document, MouseActionScriptInputData.NAME, self.toHashMap() }));
        _ = Inheritance.call(node.?, "appendChild", .{ mouseNode });
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ MouseActionScriptInputData.MOVE_X, String.valueOf(self.getPoint().?.x) });
        _ = Inheritance.call(hashMap.?, "put", .{ MouseActionScriptInputData.MOVE_Y, String.valueOf(self.getPoint().?.y) });
        _ = Inheritance.call(mouseNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNodeWithValueNodes", .{ document, MouseActionScriptInputData.MOVE, hashMap }) });
        return node;
    }
    

    // throws Exception
    pub fn process(self: *Self, frame: ?*Long) void {
        _ = frame;
        _ = Inheritance.callStatic(MouseInputAutomationProcessor, "process", .{ self });
    }
    

    pub fn log(self: *Self) void {
        const buttonStringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(buttonStringBuffer.?, "append", .{ String.literal("1: ") });
        const booleanFactory: ?*BooleanFactory = Inheritance.upcast(?*BooleanFactory, BooleanFactory.getInstance());
        if ((self.getButtonClicks() & InputEvent.BUTTON1_MASK) != 0) {
            _ = Inheritance.call(buttonStringBuffer.?, "append", .{ booleanFactory.?.TRUE_STRING });
        } else {
            _ = Inheritance.call(buttonStringBuffer.?, "append", .{ booleanFactory.?.FALSE_STRING });
        }
        _ = Inheritance.call(buttonStringBuffer.?, "append", .{ String.literal(" 2: ") });
        if ((self.getButtonClicks() & InputEvent.BUTTON2_MASK) != 0) {
            _ = Inheritance.call(buttonStringBuffer.?, "append", .{ booleanFactory.?.TRUE_STRING });
        } else {
            _ = Inheritance.call(buttonStringBuffer.?, "append", .{ booleanFactory.?.FALSE_STRING });
        }
        _ = Inheritance.call(buttonStringBuffer.?, "append", .{ String.literal(" 3: ") });
        if ((self.getButtonClicks() & InputEvent.BUTTON3_MASK) != 0) {
            _ = Inheritance.call(buttonStringBuffer.?, "append", .{ booleanFactory.?.TRUE_STRING });
        } else {
            _ = Inheritance.call(buttonStringBuffer.?, "append", .{ booleanFactory.?.FALSE_STRING });
        }
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.plus(String.plus(String.literal("Input Type: "), Inheritance.receiverOf(Inheritance.receiver(self, "getInputRobotInterface").getInputRobotInterface().?, "getName").getName()), String.literal(" Point: ")), self.getPoint()), String.literal(" Buttons Clicked: ")), Object.toString(Object.of(buttonStringBuffer))), self, String.literal("log") });
    }
};

