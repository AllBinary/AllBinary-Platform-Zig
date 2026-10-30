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
// const KeyEvent = @import("java/awt/event/KeyEvent.zig").KeyEvent;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const KeySingletonFactory = @import("org/allbinary/input/KeySingletonFactory.zig").KeySingletonFactory;
const KeyUtil = @import("org/allbinary/input/KeyUtil.zig").KeyUtil;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const BasicProfileActionScriptInput = @import("org/allbinary/input/automation/actions/script/condition/processors/input/BasicProfileActionScriptInput.zig").BasicProfileActionScriptInput;
const KeyboardActionScriptInputData = @import("org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInputData.zig").KeyboardActionScriptInputData;
const KeyboardActionScriptInputInterface = @import("org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInputInterface.zig").KeyboardActionScriptInputInterface;
const KeyboardActionScriptInputJPanel = @import("org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInputJPanel.zig").KeyboardActionScriptInputJPanel;
const KeyboardInputAutomationProcessor = @import("org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardInputAutomationProcessor.zig").KeyboardInputAutomationProcessor;
const Integer = @import("java/lang/Integer.zig").Integer;
const Long = @import("java/lang/Long.zig").Long;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const KeyboardActionScriptInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput";
    pub const java_interfaces = .{ KeyboardActionScriptInputInterface };
    base: BasicProfileActionScriptInput = undefined,
    logUtil: ?*LogUtil = null,
    keyArray: []?*Integer = &.{},
    keyboardActionScriptInputJPanel: ?*KeyboardActionScriptInputJPanel = null,
    press: bool = false,
    release: bool = false,
    delayBetweenKeys: i32 = 0,
    // Implements KeyboardActionScriptInputInterface
    const NAME: ?*String = String.literal("Keyboard");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.keyArray = @constCast(&[_]?*Integer{ Inheritance.callStatic(KeySingletonFactory, "getInstance", .{ KeyEvent.VK_0 }) })[0..];
        
        this.press = false;
        this.release = false;
        this.delayBetweenKeys = 0;
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicProfileActionScriptInput, "create2", .{ KeyboardActionScriptInput.NAME, node }).*;
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        const actionNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ KeyboardActionScriptInputData.NAME, node.?.getChildNodes() }));
        if (actionNode != null) {
            const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, actionNode.?.getChildNodes());
            const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            {
                var index: i32 = 0;
                while (index < nodeList.?.getLength()) : (index += 1) {
                const childNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
                if (Inheritance.call(childNode.?.getNodeName().?, "startsWith", .{ KeyboardActionScriptInputData.KEY })) {
                    const keyString: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ childNode }));
                    _ = Inheritance.call(vector.?, "add", .{ Inheritance.callStatic(Integer, "valueOf", .{ keyString }) });
                } else if (Inheritance.call(childNode.?.getNodeName().?, "compareTo", .{ KeyboardActionScriptInputData.DELAY_BETWEEN_KEYS }) == 0) {
                    const time: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ childNode }));
                    _ = Inheritance.call(this, "setDelayBetweenKeys", .{ Inheritance.receiverOf(Inheritance.callStatic(Integer, "valueOf", .{ time }).?, "intValue").intValue() });
                } else if (Inheritance.call(childNode.?.getNodeName().?, "compareTo", .{ KeyboardActionScriptInputData.PRESS }) == 0) {
                    const value: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ childNode }));
                    _ = Inheritance.call(this, "setPress", .{ Inheritance.callStatic(Boolean, "valueOf", .{ value }) });
                } else if (Inheritance.call(childNode.?.getNodeName().?, "compareTo", .{ KeyboardActionScriptInputData.RELEASE }) == 0) {
                    const value: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ childNode }));
                    _ = Inheritance.call(this, "setRelease", .{ Inheritance.callStatic(Boolean, "valueOf", .{ value }) });
                } else {
                    std.debug.panic("{any}", .{exception: { _ = String.literal("Action Script Input Unknown Node"); break :exception error.Exception; }});
                }
                }
            }
            _ = Inheritance.call(this, "setKeyArray", .{ Inheritance.cast([]?*Integer, Inheritance.call(vector.?, "toArrayType", .{ array_N67513: { const array_N67513_array = allocator.alloc(?*Integer, @intCast(vector.?.size())) catch unreachable; @memset(array_N67513_array, null); break :array_N67513 array_N67513_array; } })) });
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Action Script Input Node Null"); break :exception error.Exception; }});
        }
        _ = Inheritance.call(this, "setAllowsChildren", .{ false });
        if (!this.isPress() and !this.isRelease()) {
            _ = this.setNormal();
        }
        this.keyboardActionScriptInputJPanel = Inheritance.callStatic(KeyboardActionScriptInputJPanel, "create1", .{ this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicProfileActionScriptInput, "create1", .{ KeyboardActionScriptInput.NAME }).*;
        this.initFields();
        if (!this.isPress() and !this.isRelease()) {
            _ = this.setNormal();
        }
        _ = Inheritance.call(this, "setAllowsChildren", .{ false });
        _ = Inheritance.call(this, "setTime", .{ 120 });
        this.keyboardActionScriptInputJPanel = Inheritance.callStatic(KeyboardActionScriptInputJPanel, "create1", .{ this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getDelayBetweenKeys(self: *Self) i32 {
        return self.delayBetweenKeys;
    }
    

    pub fn setDelayBetweenKeys(self: *Self, delayBetweenKeys: i32) void {
        self.delayBetweenKeys = delayBetweenKeys;
    }
    

    pub fn isPress(self: *Self) bool {
        return self.press;
    }
    

    pub fn setPress(self: *Self, press: bool) void {
        self.press = press;
    }
    

    pub fn isRelease(self: *Self) bool {
        return self.release;
    }
    

    pub fn setRelease(self: *Self, release: bool) void {
        self.release = release;
    }
    

    pub fn isNormal(self: *Self) bool {
        return self.isRelease() and self.isPress();
    }
    

    pub fn setNormal(self: *Self) void {
        _ = Inheritance.call(self, "setPress", .{ true });
        _ = Inheritance.call(self, "setRelease", .{ true });
    }
    

    pub fn getKeyArray(self: *Self) []?*Integer {
        return self.keyArray;
    }
    

    pub fn setKeyArray(self: *Self, keyArray: []?*Integer) void {
        if (keyArray != null) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ CommonLabels.getInstance().?.START + @as(i32, @intCast(keyArray.len)), self, String.literal("setKeyArray") });
        }
        self.keyArray = keyArray;
    }
    

    pub fn showDialog(self: *Self) void {
        _ = Inheritance.call(Inheritance.receiver(self.keyboardActionScriptInputJPanel.?, "getKeyActionJDialog").getKeyActionJDialog().?, "setVisible", .{ true });
    }
    

    pub fn getText(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(self, "getText", .{ self.getKeyArray() }));
    }
    

    pub fn setText(self: *Self, text: ?*String) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(CommonLabels.getInstance().?.START, text), self, String.literal("setText") });
        const integerArray: []?*Integer = Inheritance.call(self, "integerArrayValue", .{ text });
        _ = Inheritance.call(self, "setKeyArray", .{ integerArray });
    }
    

    pub fn getText1(integerArray: []?*Integer) ?*String {
        var index: i32 = 0;
        const stringBuffer: ?*StringMaker = StringMaker.create();
        while (index < @as(i32, @intCast(integerArray.len))) {
            const nextInteger: ?*Integer = Inheritance.upcast(?*Integer, integerArray[@intCast(index)]);
            if (Inheritance.callStatic(KeyUtil, "isNormallyDisplayed", .{ nextInteger })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.callStatic(KeyEvent, "getKeyText", .{ nextInteger }) });
            } else {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("&#"), nextInteger), String.literal(";")) });
            }
            index += 1;
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn integerArrayValue(self: *Self, text: ?*String) []?*Integer {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(CommonLabels.getInstance().?.START, text), self, String.literal("integerArrayValue") });
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        var index: i32 = 0;
        while (index < text.?.length()) {
            const aChar: u16 = Inheritance.call(text.?, "charAt", .{ index });
            if (aChar == '&') {
                if (Inheritance.call(text.?, "charAt", .{ index + 1 }) == '#') {
                    const endIndex: i32 = text.?.indexOf2(';', index + 1);
                    if (endIndex != -1) {
                        const nextCharString: ?*String = Inheritance.upcast(?*String, text.?.substring2(index + 2, endIndex));
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(CommonLabels.getInstance().?.NEXT, String.literal(" Char String: ")), nextCharString), self, String.literal("integerArrayValue") });
                        _ = Inheritance.call(vector.?, "add", .{ Inheritance.callStatic(Integer, "valueOf", .{ nextCharString.?.substring2(index, nextCharString.?.length()) }) });
                        index = index + nextCharString.?.length() + 3;
                        continue;
                    }
                }
            }
            _ = Inheritance.call(vector.?, "add", .{ Inheritance.call(KeySingletonFactory.getHashtable().?, "get", .{ String.valueOf(aChar) }) });
            index += 1;
        }
        const integerArray: []?*Integer = Inheritance.cast([]?*Integer, Inheritance.call(vector.?, "toArrayType", .{ array_N70156: { const array_N70156_array = allocator.alloc(?*Integer, @intCast(vector.?.size())) catch unreachable; @memset(array_N70156_array, null); break :array_N70156 array_N70156_array; } }));
        return integerArray;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(self.getKeyArray().len))) : (index += 1) {
            _ = Inheritance.call(hashMap.?, "put", .{ KeyboardActionScriptInputData.KEY + index, String.valueOf(self.getKeyArray()[@intCast(index)]) });
            }
        }
        _ = Inheritance.call(hashMap.?, "put", .{ KeyboardActionScriptInputData.DELAY_BETWEEN_KEYS, String.valueOf(self.getDelayBetweenKeys()) });
        _ = Inheritance.call(hashMap.?, "put", .{ KeyboardActionScriptInputData.PRESS, String.valueOf(self.isPress()) });
        _ = Inheritance.call(hashMap.?, "put", .{ KeyboardActionScriptInputData.RELEASE, String.valueOf(self.isRelease()) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("HashMap: "), Object.toString(Object.of(hashMap))), self, String.literal("toHashMap()") });
        return hashMap;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(&self.base, "toXmlNode", .{ document }));
        _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNodeWithValueNodes", .{ document, KeyboardActionScriptInputData.NAME, self.toHashMap() }) });
        return node;
    }
    

    // throws Exception
    pub fn process(self: *Self, frame: ?*Long) void {
        _ = frame;
        _ = Inheritance.callStatic(KeyboardInputAutomationProcessor, "process", .{ self });
    }
    

    pub fn log(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(self)), self, String.literal("log") });
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.base.toString() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Text: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getText() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" isPress: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isPress() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" isRelease: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isRelease() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Between Key Delay: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getDelayBetweenKeys() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

