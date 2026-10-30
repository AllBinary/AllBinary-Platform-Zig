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
// package org.allbinary.image.gui

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Short = @import("java/lang/Short.zig").Short;

pub const ImageJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.gui.ImageJPanel";
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    canvasStrings: ?*CanvasStrings = null,
    isDrawn: bool = false,
    bufferedImage: ?*BufferedImage = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.canvasStrings = Inheritance.upcast(?*CanvasStrings, CanvasStrings.getInstance());
        this.isDrawn = false;
        
    }
    

    pub fn create1(bufferedImage: ?*BufferedImage) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JPanel.create().*;
        this.initFields();
        _ = this.initComponents();
        this.bufferedImage = bufferedImage;
        _ = Inheritance.call(this, "setSize", .{ Inheritance.call(this.bufferedImage.?, "getWidth", .{ null }), Inheritance.call(this.bufferedImage.?, "getHeight", .{ null }) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        if (!self.isDrawn) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.canvasStrings.?.PAINT });
            _ = Inheritance.call(graphics.?, "drawImage", .{ self.bufferedImage, 0, 0, Inheritance.call(self.bufferedImage.?, "getWidth", .{ null }), Inheritance.call(self.bufferedImage.?, "getHeight", .{ null }), null });
            self.isDrawn = true;
        }
    }
    

    pub fn initComponents(self: *Self) void {
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self });
        _ = Inheritance.call(self, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 400, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 300, @as(i16, std.math.maxInt(i16)) }) });
    }
};

