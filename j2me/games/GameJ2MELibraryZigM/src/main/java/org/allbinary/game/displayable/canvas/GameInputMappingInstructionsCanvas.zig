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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const ColorFillBasePaintable = @import("org/allbinary/game/paint/ColorFillBasePaintable.zig").ColorFillBasePaintable;
const ColorFillPaintableFactory = @import("org/allbinary/game/paint/ColorFillPaintableFactory.zig").ColorFillPaintableFactory;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const DrawStringUtil = @import("org/allbinary/graphics/draw/DrawStringUtil.zig").DrawStringUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const GameCommandCanvas = @import("org/allbinary/game/displayable/canvas/GameCommandCanvas.zig").GameCommandCanvas;

pub const GameInputMappingInstructionsCanvas = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas";
    base: GameCommandCanvas = undefined,
    drawStringUtil: ?*DrawStringUtil = null,
    TITLE: ?*String = null,
    instructions: []?*String = &.{},
    colorFillPaintable: ?*ColorFillBasePaintable = null,
    anchor: i32 = 0,
    pub var DISPLAY: ?*Command = undefined;
    pub var CLOSE: ?*Command = undefined;
    pub const NAME: ?*String = String.literal("GameInputMappingInstructionsCanvas");

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        DISPLAY = Inheritance.callStatic(Command, "create4", .{ String.literal("Help"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        CLOSE = Inheritance.callStatic(Command, "create4", .{ String.literal("Close"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
    }

    fn initFields(this: *Self) void {
        this.drawStringUtil = Inheritance.upcast(?*DrawStringUtil, DrawStringUtil.getInstance());
        this.TITLE = String.literal("Input Instructions");
        this.instructions = @constCast(&[_]?*String{ String.literal("Add Input Mapping:"), String.literal("1. Select the desired action by generating a currently defined input for a given action."), String.literal("(Example: Press the '1' key to select the Fire action)"), String.literal("2. Make the newly desired input for the selected action."), String.literal("(Example: Press 'f' to add it to the selected action)"), String.literal("Note: If the input is already mapped to another action then it will not be added. You"), String.literal("will need to deleted from the other action before adding it to another."), String.literal("Warning: Not all keys map for a given platform and show as Unknown."), StringUtil.getInstance().?.EMPTY_STRING, String.literal("Remove Input Mapping:"), String.literal("1. Select the desired action by generating a currently defined input for a given action."), String.literal("(Example: Press the key '1' to select the Fire action)"), String.literal("2. Select a mapped input for the selected action."), String.literal("(Example: Press the key '1' to select the '1' key input for the selected Fire action)"), String.literal("3. Press the Delete Key.") })[0..];
        
        this.anchor = Anchor.TOP_LEFT;
    }
    

    pub fn create2(commandListener: ?*CommandListener, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GameCommandCanvas, "create4", .{ commandListener, GameInputMappingInstructionsCanvas.NAME, Inheritance.receiver(allBinaryGameLayerManager.?, "getBackgroundBasicColor").getBackgroundBasicColor(), Inheritance.receiver(allBinaryGameLayerManager.?, "getForegroundBasicColor").getForegroundBasicColor() }).*;
        this.initFields();
        _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        this.colorFillPaintable = Inheritance.upcast(@TypeOf(this.colorFillPaintable), Inheritance.call(ColorFillPaintableFactory.getInstance().?, "getInstance", .{ Inheritance.receiver(allBinaryGameLayerManager.?, "getBackgroundBasicColor").getBackgroundBasicColor(), false }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initCommands(self: *Self, cmdListener: ?*CommandListener) void {
        _ = Inheritance.receiver(self, "removeAllCommands").removeAllCommands();
        _ = Inheritance.call(self, "addCommand", .{ GameInputMappingInstructionsCanvas.CLOSE });
        _ = Inheritance.call(self, "setCommandListener", .{ cmdListener });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "myFontProcessor").*.?, "process", .{ graphics });
        _ = Inheritance.call(self.colorFillPaintable.?, "paint", .{ graphics });
        const halfWidth: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "displayInfo").*.?, "getLastHalfWidth").getLastHalfWidth();
        const beginWidth: i32 = (Inheritance.call(graphics.?.getFont().?, "stringWidth", .{ self.TITLE }) >> @intCast(1));
        _ = Inheritance.call(graphics.?, "setColor", .{ Inheritance.fieldPointer(self, "foregroundColor").* });
        _ = Inheritance.call(graphics.?, "drawString", .{ self.TITLE, halfWidth - beginWidth, Inheritance.fieldPointer(self, "fontHeight").*, self.anchor });
        _ = Inheritance.call(self.drawStringUtil.?, "drawCenterStrings", .{ graphics, self.instructions, Inheritance.receiverOf(Inheritance.fieldPointer(self, "displayInfo").*.?, "getLastWidth").getLastWidth(), Inheritance.fieldPointer(self, "fontHeight").*, halfWidth, 3 * Inheritance.fieldPointer(self, "fontHeight").* });
        _ = Inheritance.call(&self.base, "paint", .{ graphics });
    }
};

