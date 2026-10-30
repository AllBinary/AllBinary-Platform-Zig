// Generated Code Do Not Modify
// package org.allbinary.game.midlet

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameState = @import("org/allbinary/game/state/GameState.zig").GameState;
const GameStateFactory = @import("org/allbinary/game/state/GameStateFactory.zig").GameStateFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;

pub const GameMidletStateFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.midlet.GameMidletStateFactory";
    logUtil: ?*LogUtil = null,
    currentGameState: ?*GameState = null,
    var INSTANCE: ?*GameMidletStateFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        INSTANCE = GameMidletStateFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.currentGameState = Inheritance.upcast(?*GameState, GameStateFactory.getInstance().?.NO_GAME_STATE);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GameMidletStateFactory {
        return Inheritance.upcast(?*GameMidletStateFactory, GameMidletStateFactory.INSTANCE);
    }
    

    pub fn getCurrentGameState(self: *Self) ?*GameState {
        return self.currentGameState;
    }
    

    pub fn setCurrentGameState(self: *Self, currentGameState: ?*GameState) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.CURRENT }).?, "append", .{ String.literal(" GameState: ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ currentGameState }) }))), self, String.literal("setCurrentGameState") });
        self.currentGameState = currentGameState;
    }
};

