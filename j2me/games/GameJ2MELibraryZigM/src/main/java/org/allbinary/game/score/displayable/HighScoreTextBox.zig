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
// package org.allbinary.game.score.displayable

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const TextField = @import("javax/microedition/lcdui/TextField.zig").TextField;
const PostGameCommandFactory = @import("org/allbinary/PostGameCommandFactory.zig").PostGameCommandFactory;
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const HighScore = @import("org/allbinary/game/score/HighScore.zig").HighScore;
const HighScoresHelperBaseInterface = @import("org/allbinary/game/score/HighScoresHelperBaseInterface.zig").HighScoresHelperBaseInterface;
const HighScoresFactoryInterface = @import("org/allbinary/game/score/HighScoresFactoryInterface.zig").HighScoresFactoryInterface;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const CustomTextBox = @import("org/allbinary/graphics/form/item/CustomTextBox.zig").CustomTextBox;
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const SimpleTextPaintable = @import("org/allbinary/graphics/paint/SimpleTextPaintable.zig").SimpleTextPaintable;
const VirtualKeyboardEventHandler = @import("org/allbinary/input/event/VirtualKeyboardEventHandler.zig").VirtualKeyboardEventHandler;
const GenericOperatingSystem = @import("org/allbinary/logic/system/os/GenericOperatingSystem.zig").GenericOperatingSystem;
const OperatingSystemFactory = @import("org/allbinary/logic/system/os/OperatingSystemFactory.zig").OperatingSystemFactory;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const InApplicationPurchaseFactory = @import("org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory.zig").InApplicationPurchaseFactory;
const HighScoreUtil = @import("org/allbinary/game/score/displayable/HighScoreUtil.zig").HighScoreUtil;

pub const HighScoreTextBox = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.displayable.HighScoreTextBox";
    base: CustomTextBox = undefined,
    virtualKeyboardEventHandler: ?*VirtualKeyboardEventHandler = null,
    highScoreUtil: ?*HighScoreUtil = null,
    pleaseWait: ?*Paintable = null,
    paintable: ?*Paintable = null,
    submitted: bool = false,

    fn initFields(this: *Self) void {
        this.virtualKeyboardEventHandler = Inheritance.upcast(?*VirtualKeyboardEventHandler, VirtualKeyboardEventHandler.getInstance());
        
        this.pleaseWait = Inheritance.upcast(?*Paintable, Inheritance.callStatic(SimpleTextPaintable, "create2", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.PLEASE_WAIT, BasicColorFactory.getInstance().?.WHITE }));
        this.paintable = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
        this.submitted = false;
    }
    

    pub fn create9(highScoresFactoryInterface: ?*HighScoresFactoryInterface, highScoresHelper: ?*HighScoresHelperBaseInterface, abeClientInformation: ?*AbeClientInformationInterface, gameInfo: ?*GameInfo, cmdListener: ?*CommandListener, name: ?*String, highScore: ?*HighScore, backgrounBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CustomTextBox, "create8", .{ cmdListener, String.literal("New High Score Enter Name:"), name, 12, TextField.ANY, Font.getDefaultFont(), backgrounBasicColor, foregroundBasicColor }).*;
        this.initFields();
        this.highScoreUtil = Inheritance.callStatic(HighScoreUtil, "create7", .{ highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore });
        const operatingSystemInterface: ?*GenericOperatingSystem = Inheritance.upcast(?*GenericOperatingSystem, Inheritance.receiverOf(OperatingSystemFactory.getInstance().?, "getOperatingSystemInstance").getOperatingSystemInstance());
        if (operatingSystemInterface.?.isOverScan()) {
            const username: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(InApplicationPurchaseFactory.getInstance().?, "getUserName").getUserName());
            if (username != null) {
                _ = Inheritance.call(Inheritance.receiver(this, "getTextFieldItem").getTextFieldItem().?, "setString", .{ username });
            } else {
                _ = Inheritance.call(Inheritance.receiver(this, "getTextFieldItem").getTextFieldItem().?, "setString", .{ String.literal("NoGamerInfo") });
            }
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initCommands(self: *Self, cmdListener: ?*CommandListener) void {
        _ = Inheritance.receiver(self, "removeAllCommands").removeAllCommands();
        _ = Inheritance.call(PostGameCommandFactory.getInstance().?, "addCommands", .{ self });
        _ = Inheritance.call(self, "addCommand", .{ HighScoreUtil.SUBMIT_TEXTBOX_COMMAND });
        _ = Inheritance.call(self, "setCommandListener", .{ cmdListener });
    }
    

    pub fn open(self: *Self) void {
        _ = Inheritance.receiver(self.virtualKeyboardEventHandler.?, "open").open();
        self.paintable = Inheritance.upcast(@TypeOf(self.paintable), NullPaintable.getInstance());
        _ = self.base.open();
    }
    

    // throws Exception
    pub fn close(self: *Self) void {
        _ = Inheritance.receiver(self.virtualKeyboardEventHandler.?, "close").close();
        self.paintable = self.pleaseWait;
        _ = Inheritance.call(Inheritance.fieldPointer(self, "repaintBehavior").*.?, "onChangeRepaint", .{ self });
        _ = self.base.close();
        _ = Inheritance.call(self, "removeCommand", .{ HighScoreUtil.SUBMIT_TEXTBOX_COMMAND });
        _ = self.update();
        if (self.submitted) {
            _ = self.highScoreUtil.?.saveHighScore();
        } else {
        }
        self.paintable = Inheritance.upcast(@TypeOf(self.paintable), NullPaintable.getInstance());
        _ = Inheritance.call(Inheritance.fieldPointer(self, "repaintBehavior").*.?, "onChangeRepaint", .{ self });
    }
    

    // throws Exception
    pub fn update(self: *Self) void {
        const name: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(Inheritance.receiver(self, "getTextFieldItem").getTextFieldItem().?, "getString").getString());
        _ = Inheritance.call(self.highScoreUtil.?, "update", .{ name });
        _ = self.base.update();
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "paint", .{ graphics });
        _ = Inheritance.call(self.paintable.?, "paint", .{ graphics });
    }
    

    pub fn saveHighScore(self: *Self) void {
        _ = self.highScoreUtil.?.saveHighScore();
    }
    

    pub fn submit(self: *Self) void {
        _ = Inheritance.call(self.highScoreUtil.?, "submit", .{ self });
    }
};

