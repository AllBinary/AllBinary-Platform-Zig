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
// package org.allbinary.logic.visual.dhtml.style.color

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const ColorData = @import("org/allbinary/logic/visual/dhtml/style/color/ColorData.zig").ColorData;
const ColorsData = @import("org/allbinary/logic/visual/dhtml/style/color/ColorsData.zig").ColorsData;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const ColorsView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.style.color.ColorsView";
    commonPhoneStrings: ?*CommonPhoneStrings = null,
    HEXRADIX: i32 = 0,
    MAX: i32 = 0,
    delta: i32 = 0,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.commonPhoneStrings = Inheritance.upcast(?*CommonPhoneStrings, CommonPhoneStrings.getInstance());
        this.HEXRADIX = 16;
        this.MAX = 255;
        this.delta = 20;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getColorNode(self: *Self, document: ?*Document, redIndex: i32, greenIndex: i32, blueIndex: i32) ?*Node {
        const hexColorStringBuffer: ?*StringMaker = StringMaker.create();
        if (redIndex < self.HEXRADIX) {
            _ = Inheritance.call(hexColorStringBuffer.?, "append", .{ self.commonPhoneStrings.?.ZERO });
        }
        _ = Inheritance.call(hexColorStringBuffer.?, "append", .{ Inheritance.callStatic(Integer, "toString", .{ redIndex, self.HEXRADIX }) });
        if (greenIndex < self.HEXRADIX) {
            _ = Inheritance.call(hexColorStringBuffer.?, "append", .{ self.commonPhoneStrings.?.ZERO });
        }
        _ = Inheritance.call(hexColorStringBuffer.?, "append", .{ Inheritance.callStatic(Integer, "toString", .{ greenIndex, self.HEXRADIX }) });
        if (blueIndex < self.HEXRADIX) {
            _ = Inheritance.call(hexColorStringBuffer.?, "append", .{ self.commonPhoneStrings.?.ZERO });
        }
        _ = Inheritance.call(hexColorStringBuffer.?, "append", .{ Inheritance.callStatic(Integer, "toString", .{ blueIndex, self.HEXRADIX }) });
        const colorNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, ColorData.getInstance().?.NAME, Object.toString(Object.of(hexColorStringBuffer)) }));
        return colorNode;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, ColorsData.getInstance().?.NAME, String.literal("RGB Colors In Hex") }));
        const blackNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, ColorData.getInstance().?.NAME, String.literal("000000") }));
        _ = Inheritance.call(node.?, "appendChild", .{ blackNode });
        {
            var index: i32 = 0;
            while (index < self.MAX) : (index += self.delta) {
            const hexColorStringBuffer: ?*StringMaker = StringMaker.create();
            if (index < self.HEXRADIX) {
                _ = Inheritance.call(hexColorStringBuffer.?, "append", .{ self.commonPhoneStrings.?.ZERO });
            }
            _ = Inheritance.call(hexColorStringBuffer.?, "append", .{ Inheritance.callStatic(Integer, "toString", .{ index, self.HEXRADIX }) });
            if (index < self.HEXRADIX) {
                _ = Inheritance.call(hexColorStringBuffer.?, "append", .{ self.commonPhoneStrings.?.ZERO });
            }
            _ = Inheritance.call(hexColorStringBuffer.?, "append", .{ Inheritance.callStatic(Integer, "toString", .{ index, self.HEXRADIX }) });
            if (index < self.HEXRADIX) {
                _ = Inheritance.call(hexColorStringBuffer.?, "append", .{ self.commonPhoneStrings.?.ZERO });
            }
            _ = Inheritance.call(hexColorStringBuffer.?, "append", .{ Inheritance.callStatic(Integer, "toString", .{ index, self.HEXRADIX }) });
            const colorNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, ColorData.getInstance().?.NAME, Object.toString(Object.of(hexColorStringBuffer)) }));
            _ = Inheritance.call(node.?, "appendChild", .{ colorNode });
            }
        }
        const whiteNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, ColorData.getInstance().?.NAME, String.literal("FFFFFF") }));
        _ = Inheritance.call(node.?, "appendChild", .{ whiteNode });
        {
            var blueIndex: i32 = @divTrunc(self.MAX, 2);
            while (blueIndex < self.MAX) : (blueIndex += self.delta) {
            {
                var greenIndex: i32 = 0;
                while (greenIndex < @divTrunc(self.MAX, 2)) : (greenIndex += self.delta) {
                {
                    var redIndex: i32 = 0;
                    while (redIndex < @divTrunc(self.MAX, 2)) : (redIndex += self.delta) {
                    _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(self, "getColorNode", .{ document, redIndex, greenIndex, blueIndex }) });
                    }
                }
                }
            }
            }
        }
        {
            var redIndex: i32 = @divTrunc(self.MAX, 2);
            while (redIndex < self.MAX) : (redIndex += self.delta) {
            {
                var greenIndex: i32 = 0;
                while (greenIndex < @divTrunc(self.MAX, 2)) : (greenIndex += self.delta) {
                {
                    var blueIndex: i32 = 0;
                    while (blueIndex < @divTrunc(self.MAX, 2)) : (blueIndex += self.delta) {
                    _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(self, "getColorNode", .{ document, redIndex, greenIndex, blueIndex }) });
                    }
                }
                }
            }
            }
        }
        {
            var greenIndex: i32 = @divTrunc(self.MAX, 2);
            while (greenIndex < self.MAX) : (greenIndex += self.delta) {
            {
                var redIndex: i32 = 0;
                while (redIndex < @divTrunc(self.MAX, 2)) : (redIndex += self.delta) {
                {
                    var blueIndex: i32 = 0;
                    while (blueIndex < @divTrunc(self.MAX, 2)) : (blueIndex += self.delta) {
                    _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(self, "getColorNode", .{ document, redIndex, greenIndex, blueIndex }) });
                    }
                }
                }
            }
            }
        }
        {
            var greenIndex: i32 = 0;
            while (greenIndex < self.MAX) : (greenIndex += 2 * self.delta) {
            {
                var redIndex: i32 = 0;
                while (redIndex < self.MAX) : (redIndex += 2 * self.delta) {
                {
                    var blueIndex: i32 = 0;
                    while (blueIndex < self.MAX) : (blueIndex += 2 * self.delta) {
                    _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(self, "getColorNode", .{ document, redIndex, greenIndex, blueIndex }) });
                    }
                }
                }
            }
            }
        }
        return node;
    }
};

