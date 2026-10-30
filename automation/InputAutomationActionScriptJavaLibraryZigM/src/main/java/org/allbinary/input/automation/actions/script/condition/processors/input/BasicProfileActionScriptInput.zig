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
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Iterator = @import("java/util/Iterator.zig").Iterator;
// const Set = @import("java/util/Set.zig").Set;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const BasicProfileActionScriptProcessor = @import("org/allbinary/input/automation/actions/script/condition/processors/BasicProfileActionScriptProcessor.zig").BasicProfileActionScriptProcessor;
const InputRobotFactory = @import("org/allbinary/input/automation/robot/InputRobotFactory.zig").InputRobotFactory;
const InputRobotInterface = @import("org/allbinary/input/automation/robot/InputRobotInterface.zig").InputRobotInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const GenericProfileActionScriptInputData = @import("org/allbinary/input/automation/actions/script/condition/processors/input/GenericProfileActionScriptInputData.zig").GenericProfileActionScriptInputData;
const ProfileActionScriptInputInterface = @import("org/allbinary/input/automation/actions/script/condition/processors/input/ProfileActionScriptInputInterface.zig").ProfileActionScriptInputInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const BasicProfileActionScriptInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInput";
    pub const java_interfaces = .{ ProfileActionScriptInputInterface };
    base: BasicProfileActionScriptProcessor = undefined,
    logUtil: ?*LogUtil = null,
    inputRobotInterface: ?*InputRobotInterface = null,
    time: i32 = 0,
    // Implements ProfileActionScriptInputInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.inputRobotInterface = null;
        this.time = 0;
    }
    

    pub fn create2(label: ?*String, node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicProfileActionScriptProcessor, "create2", .{ label, node }).*;
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(this, "commonStrings").*.?.START, label), this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        const actionNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ GenericProfileActionScriptInputData.TYPE, node.?.getChildNodes() }));
        const inputTypeString: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ actionNode }));
        const timeNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNodeNoThrow", .{ GenericProfileActionScriptInputData.DELAY, node.?.getChildNodes() }));
        if (timeNode != null) {
            const delayString: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ timeNode }));
            _ = Inheritance.call(this, "setTime", .{ Inheritance.receiverOf(Inheritance.callStatic(Integer, "valueOf", .{ delayString }).?, "intValue").intValue() });
        } else {
            _ = Inheritance.call(this, "setTime", .{ 0 });
        }
        _ = Inheritance.call(this, "setInputRobotInterface", .{ Inheritance.call(InputRobotFactory.getInstance().?, "get", .{ inputTypeString }) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create1(label: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicProfileActionScriptProcessor, "create1", .{ label }).*;
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(this, "commonStrings").*.?.START, label), this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        const inputRobotFactory: ?*InputRobotFactory = Inheritance.upcast(?*InputRobotFactory, InputRobotFactory.getInstance());
        const hashtable: ?*ABHashtable = Inheritance.cast(?*ABHashtable, inputRobotFactory.?.get());
        const set: ?*Set = Inheritance.upcast(?*Set, Inheritance.receiver(hashtable.?, "keySet").keySet());
        const iterator: ?*Iterator = Inheritance.upcast(?*Iterator, set.?.iterator());
        _ = Inheritance.call(this, "setInputRobotInterface", .{ Inheritance.call(inputRobotFactory.?, "get", .{ Inheritance.cast(?*String, iterator.?.next()) }) });
        _ = Inheritance.call(this, "setTime", .{ 0 });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getTime(self: *Self) i32 {
        return self.time;
    }
    

    pub fn setTime(self: *Self, time: i32) void {
        self.time = time;
    }
    

    pub fn BasicProfileActionScriptInput_toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ GenericProfileActionScriptInputData.TYPE, Inheritance.receiverOf(self.getInputRobotInterface().?, "getName").getName() });
        _ = Inheritance.call(hashMap.?, "put", .{ GenericProfileActionScriptInputData.DELAY, String.valueOf(self.getTime()) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("HashMap: "), Object.toString(Object.of(hashMap))), self, String.literal("toHashMap()") });
        return hashMap;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNodeWithValueNodes", .{ document, GenericProfileActionScriptInputData.NAME, self.BasicProfileActionScriptInput_toHashMap() }));
        return node;
    }
    

    pub fn setInputRobotInterface(self: *Self, inputRobotInterface: ?*InputRobotInterface) void {
        self.inputRobotInterface = inputRobotInterface;
    }
    

    pub fn getInputRobotInterface(self: *Self) ?*InputRobotInterface {
        return self.inputRobotInterface;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.base.toString() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Input Type: ") });
        if (self.getInputRobotInterface() != null) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(self.getInputRobotInterface().?, "getName").getName() });
        } else {
            _ = Inheritance.call(stringBuffer.?, "append", .{ StringUtil.getInstance().?.NULL_STRING });
        }
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Time: ") });
        _ = Inheritance.call(stringBuffer.?, "appendlong", .{ @as(i64, @intCast(self.getTime())) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

