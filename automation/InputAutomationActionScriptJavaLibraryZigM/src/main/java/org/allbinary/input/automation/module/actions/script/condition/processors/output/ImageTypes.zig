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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const InputImageType = @import("org/allbinary/input/media/image/InputImageType.zig").InputImageType;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const ImageActionScriptOutputData = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputData.zig").ImageActionScriptOutputData;

pub const ImageTypes = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes";
    vector: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.vector = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
        {
            var index: i32 = 0;
            while (index < nodeList.?.getLength()) : (index += 1) {
            const childNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
            if (Inheritance.call(childNode.?.getNodeName().?, "compareTo", .{ ImageActionScriptOutputData.TYPE }) == 0) {
                const nextImageTypeString: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ childNode }));
                _ = Inheritance.call(this.getVector().?, "add", .{ Inheritance.callStatic(InputImageType, "getInstance", .{ nextImageTypeString }) });
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.literal("ImageTypes Unknown Node"); break :exception error.Exception; }});
            }
            }
        }
        return this;
    }
    

    pub fn valueOf(anyType: []?Object) ?*ImageTypes {
        const imageTypes: ?*ImageTypes = ImageTypes.create();
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(anyType.len))) : (index += 1) {
            const imageType: ?*InputImageType = Inheritance.upcast(?*InputImageType, Inheritance.callStatic(InputImageType, "getInstance", .{ Inheritance.cast(?*String, anyType[@intCast(index)]) }));
            _ = Inheritance.call(imageTypes.?.getVector().?, "add", .{ imageType });
            }
        }
        return imageTypes;
    }
    

    pub fn getVector(self: *Self) ?*BasicArrayList {
        return self.vector;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const newNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ ImageActionScriptOutputData.TYPES }));
        const size: i32 = self.vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const imageType: ?*InputImageType = Inheritance.cast(?*InputImageType, Inheritance.call(self.vector.?, "get", .{ index }));
            _ = Inheritance.call(newNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createTextNode", .{ document, ImageActionScriptOutputData.TYPE, imageType.?.getName() }) });
            }
        }
        return newNode;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("ImageTypes: ") });
        const size: i32 = self.vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const imageType: ?*InputImageType = Inheritance.cast(?*InputImageType, Inheritance.call(self.vector.?, "get", .{ index }));
            _ = Inheritance.call(stringBuffer.?, "append", .{ imageType.?.getName() });
            if (index < size - 1) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(", ") });
            }
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

