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
// package org.allbinary.input.automation.module.actions.script.condition.processors.output

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const BasicProfileActionScriptOutput = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/BasicProfileActionScriptOutput.zig").BasicProfileActionScriptOutput;
const ImageActionScriptOutputData = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputData.zig").ImageActionScriptOutputData;
const ImageActionScriptOutputInterface = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputInterface.zig").ImageActionScriptOutputInterface;
const ImageActionScriptOutputJPanel = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputJPanel.zig").ImageActionScriptOutputJPanel;
const ImageActionScriptOutputProcessor = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputProcessor.zig").ImageActionScriptOutputProcessor;
const ImageTypes = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageTypes.zig").ImageTypes;
const Long = @import("java/lang/Long.zig").Long;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const ImageActionScriptOutput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput";
    pub const java_interfaces = .{ ImageActionScriptOutputInterface };
    base: BasicProfileActionScriptOutput = undefined,
    logUtil: ?*LogUtil = null,
    saved: bool = false,
    display: bool = false,
    imageTypes: ?*ImageTypes = null,
    actionScriptOutputJPanel: ?*ImageActionScriptOutputJPanel = null,
    // Implements ImageActionScriptOutputInterface
    const NAME: ?*String = String.literal("Captures");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.saved = false;
        this.display = false;
        this.imageTypes = null;
        
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicProfileActionScriptOutput, "create2", .{ ImageActionScriptOutput.NAME, node }).*;
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        const actionNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ ImageActionScriptOutputData.NAME, node.?.getChildNodes() }));
        if (actionNode != null) {
            const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, actionNode.?.getChildNodes());
            {
                var index: i32 = 0;
                while (index < nodeList.?.getLength()) : (index += 1) {
                const childNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
                if (Inheritance.call(childNode.?.getNodeName().?, "compareTo", .{ ImageActionScriptOutputData.SAVE }) == 0) {
                    const booleanString: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ childNode }));
                    _ = Inheritance.call(this, "setSaved", .{ Inheritance.callStatic(Boolean, "create1", .{ booleanString }).booleanValue() });
                } else if (Inheritance.call(childNode.?.getNodeName().?, "compareTo", .{ ImageActionScriptOutputData.DISPLAY }) == 0) {
                    const booleanString: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ childNode }));
                    _ = Inheritance.call(this, "setSaved", .{ Inheritance.callStatic(Boolean, "create1", .{ booleanString }).booleanValue() });
                } else if (Inheritance.call(childNode.?.getNodeName().?, "compareTo", .{ ImageActionScriptOutputData.TYPES }) == 0) {
                    _ = Inheritance.call(this, "setImageTypes", .{ Inheritance.callStatic(ImageTypes, "create1", .{ childNode }) });
                } else {
                    std.debug.panic("{any}", .{exception: { _ = String.literal("Action Script Output Unknown Node"); break :exception error.Exception; }});
                }
                }
            }
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Action Script Output Node Null"); break :exception error.Exception; }});
        }
        _ = Inheritance.call(this, "setAllowsChildren", .{ false });
        this.actionScriptOutputJPanel = Inheritance.callStatic(ImageActionScriptOutputJPanel, "create1", .{ this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicProfileActionScriptOutput, "create1", .{ ImageActionScriptOutput.NAME }).*;
        this.initFields();
        _ = Inheritance.call(this, "setImageTypes", .{ ImageTypes.create() });
        _ = Inheritance.call(this, "setAllowsChildren", .{ false });
        this.actionScriptOutputJPanel = Inheritance.callStatic(ImageActionScriptOutputJPanel, "create1", .{ this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getActionScriptOutputJPanel(self: *Self) ?*ImageActionScriptOutputJPanel {
        return self.actionScriptOutputJPanel;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ ImageActionScriptOutputData.DISPLAY, String.valueOf(self.isDisplay()) });
        _ = Inheritance.call(hashMap.?, "put", .{ ImageActionScriptOutputData.SAVE, String.valueOf(self.isSaved()) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("HashMap: "), Object.toString(Object.of(hashMap))), self, String.literal("toHashMap()") });
        return hashMap;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(&self.base, "toXmlNode", .{ document }));
        const newNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNodeWithValueNodes", .{ document, ImageActionScriptOutputData.NAME, self.toHashMap() }));
        _ = Inheritance.call(newNode.?, "appendChild", .{ Inheritance.call(self.getImageTypes().?, "toXmlNode", .{ document }) });
        _ = Inheritance.call(node.?, "appendChild", .{ newNode });
        return node;
    }
    

    // throws Exception
    pub fn process(self: *Self, frame: ?*Long) void {
        _ = Inheritance.callStatic(ImageActionScriptOutputProcessor, "process", .{ self, frame });
    }
    

    pub fn showDialog(self: *Self) void {
        _ = Inheritance.call(Inheritance.receiver(self.actionScriptOutputJPanel.?, "getCapturedImageActionJDialog").getCapturedImageActionJDialog().?, "setVisible", .{ true });
    }
    

    pub fn isSaved(self: *Self) bool {
        return self.saved;
    }
    

    pub fn setSaved(self: *Self, saved: bool) void {
        self.saved = saved;
    }
    

    pub fn isDisplay(self: *Self) bool {
        return self.display;
    }
    

    pub fn setDisplay(self: *Self, display: bool) void {
        self.display = display;
    }
    

    pub fn future_toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Is Save: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isSaved() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Is Display: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isDisplay() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.getImageTypes())) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn log(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.future_toString(), self, String.literal("log") });
    }
    

    pub fn getImageTypes(self: *Self) ?*ImageTypes {
        return self.imageTypes;
    }
    

    pub fn setImageTypes(self: *Self, imageTypes: ?*ImageTypes) void {
        self.imageTypes = imageTypes;
    }
};

