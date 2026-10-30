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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PositionStrings = @import("org/allbinary/math/PositionStrings.zig").PositionStrings;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const PCGameKey = @import("org/allbinary/game/input/PCGameKey.zig").PCGameKey;

pub const PCKeyFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.PCKeyFactory";
    keyEventWrapper: ?*ABKeyEventWrapper = null,
    UNKNOWN: ?*PCGameKey = null,
    ENTER: ?*PCGameKey = null,
    _A: ?*PCGameKey = null,
    _B: ?*PCGameKey = null,
    _C: ?*PCGameKey = null,
    _D: ?*PCGameKey = null,
    _E: ?*PCGameKey = null,
    _F: ?*PCGameKey = null,
    _G: ?*PCGameKey = null,
    _H: ?*PCGameKey = null,
    _I: ?*PCGameKey = null,
    _J: ?*PCGameKey = null,
    _K: ?*PCGameKey = null,
    _L: ?*PCGameKey = null,
    _M: ?*PCGameKey = null,
    _N: ?*PCGameKey = null,
    _O: ?*PCGameKey = null,
    _P: ?*PCGameKey = null,
    _Q: ?*PCGameKey = null,
    _R: ?*PCGameKey = null,
    _S: ?*PCGameKey = null,
    _T: ?*PCGameKey = null,
    _U: ?*PCGameKey = null,
    _V: ?*PCGameKey = null,
    _W: ?*PCGameKey = null,
    _X: ?*PCGameKey = null,
    _Y: ?*PCGameKey = null,
    _Z: ?*PCGameKey = null,
    a: ?*PCGameKey = null,
    b: ?*PCGameKey = null,
    c: ?*PCGameKey = null,
    d: ?*PCGameKey = null,
    e: ?*PCGameKey = null,
    f: ?*PCGameKey = null,
    g: ?*PCGameKey = null,
    h: ?*PCGameKey = null,
    i: ?*PCGameKey = null,
    j: ?*PCGameKey = null,
    k: ?*PCGameKey = null,
    l: ?*PCGameKey = null,
    m: ?*PCGameKey = null,
    n: ?*PCGameKey = null,
    o: ?*PCGameKey = null,
    p: ?*PCGameKey = null,
    q: ?*PCGameKey = null,
    r: ?*PCGameKey = null,
    s: ?*PCGameKey = null,
    t: ?*PCGameKey = null,
    u: ?*PCGameKey = null,
    v: ?*PCGameKey = null,
    w: ?*PCGameKey = null,
    x: ?*PCGameKey = null,
    y: ?*PCGameKey = null,
    z: ?*PCGameKey = null,
    ZERO: ?*PCGameKey = null,
    ONE: ?*PCGameKey = null,
    TWO: ?*PCGameKey = null,
    THREE: ?*PCGameKey = null,
    FOUR: ?*PCGameKey = null,
    FIVE: ?*PCGameKey = null,
    SIX: ?*PCGameKey = null,
    SEVEN: ?*PCGameKey = null,
    EIGHT: ?*PCGameKey = null,
    NINE: ?*PCGameKey = null,
    DPAD_UP: ?*PCGameKey = null,
    DPAD_DOWN: ?*PCGameKey = null,
    DPAD_LEFT: ?*PCGameKey = null,
    DPAD_RIGHT: ?*PCGameKey = null,
    DPAD_UP2: ?*PCGameKey = null,
    DPAD_DOWN2: ?*PCGameKey = null,
    DPAD_LEFT2: ?*PCGameKey = null,
    DPAD_RIGHT2: ?*PCGameKey = null,
    COMMA: ?*PCGameKey = null,
    SPACE: ?*PCGameKey = null,
    DEL: ?*PCGameKey = null,
    STAR: ?*PCGameKey = null,
    QUESTION: ?*PCGameKey = null,
    PERIOD: ?*PCGameKey = null,
    ESCAPE: ?*PCGameKey = null,
    BACK_SPACE: ?*PCGameKey = null,
    var SINGLETON: ?*PCKeyFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = PCKeyFactory.create();
    }

    fn initFields(this: *Self) void {
        this.keyEventWrapper = Inheritance.upcast(?*ABKeyEventWrapper, ABKeyEventWrapper.getInstance());
        this.UNKNOWN = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_UNDEFINED, String.literal("UNKNOWN") });
        this.ENTER = Inheritance.callStatic(PCGameKey, "create2", .{ 5, String.literal("Enter") });
        this._A = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_A, String.literal("A") });
        this._B = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_B, String.literal("B") });
        this._C = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_C, String.literal("C") });
        this._D = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_D, String.literal("D") });
        this._E = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_E, String.literal("E") });
        this._F = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_F, String.literal("F") });
        this._G = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_G, String.literal("G") });
        this._H = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_H, String.literal("H") });
        this._I = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_I, String.literal("I") });
        this._J = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_J, String.literal("J") });
        this._K = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_K, String.literal("K") });
        this._L = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_L, String.literal("L") });
        this._M = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_M, String.literal("M") });
        this._N = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_N, String.literal("N") });
        this._O = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_O, String.literal("O") });
        this._P = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_P, String.literal("P") });
        this._Q = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_Q, String.literal("Q") });
        this._R = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_R, String.literal("R") });
        this._S = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_S, String.literal("S") });
        this._T = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_T, String.literal("T") });
        this._U = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_U, String.literal("U") });
        this._V = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_V, String.literal("V") });
        this._W = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_W, String.literal("W") });
        this._X = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_X, String.literal("X") });
        this._Y = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_Y, String.literal("Y") });
        this._Z = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_Z, String.literal("Z") });
        this.a = Inheritance.callStatic(PCGameKey, "create2", .{ 97, String.literal("a") });
        this.b = Inheritance.callStatic(PCGameKey, "create2", .{ 98, String.literal("b") });
        this.c = Inheritance.callStatic(PCGameKey, "create2", .{ 99, String.literal("c") });
        this.d = Inheritance.callStatic(PCGameKey, "create2", .{ 100, String.literal("d") });
        this.e = Inheritance.callStatic(PCGameKey, "create2", .{ 101, String.literal("e") });
        this.f = Inheritance.callStatic(PCGameKey, "create2", .{ 102, String.literal("f") });
        this.g = Inheritance.callStatic(PCGameKey, "create2", .{ 103, String.literal("g") });
        this.h = Inheritance.callStatic(PCGameKey, "create2", .{ 104, String.literal("h") });
        this.i = Inheritance.callStatic(PCGameKey, "create2", .{ 105, String.literal("i") });
        this.j = Inheritance.callStatic(PCGameKey, "create2", .{ 106, String.literal("j") });
        this.k = Inheritance.callStatic(PCGameKey, "create2", .{ 107, String.literal("k") });
        this.l = Inheritance.callStatic(PCGameKey, "create2", .{ 108, String.literal("l") });
        this.m = Inheritance.callStatic(PCGameKey, "create2", .{ 109, String.literal("m") });
        this.n = Inheritance.callStatic(PCGameKey, "create2", .{ 110, String.literal("n") });
        this.o = Inheritance.callStatic(PCGameKey, "create2", .{ 111, String.literal("o") });
        this.p = Inheritance.callStatic(PCGameKey, "create2", .{ 112, String.literal("p") });
        this.q = Inheritance.callStatic(PCGameKey, "create2", .{ 113, String.literal("q") });
        this.r = Inheritance.callStatic(PCGameKey, "create2", .{ 114, String.literal("r") });
        this.s = Inheritance.callStatic(PCGameKey, "create2", .{ 115, String.literal("s") });
        this.t = Inheritance.callStatic(PCGameKey, "create2", .{ 116, String.literal("t") });
        this.u = Inheritance.callStatic(PCGameKey, "create2", .{ 117, String.literal("u") });
        this.v = Inheritance.callStatic(PCGameKey, "create2", .{ 118, String.literal("v") });
        this.w = Inheritance.callStatic(PCGameKey, "create2", .{ 119, String.literal("w") });
        this.x = Inheritance.callStatic(PCGameKey, "create2", .{ 120, PositionStrings.getInstance().?.X });
        this.y = Inheritance.callStatic(PCGameKey, "create2", .{ 121, PositionStrings.getInstance().?.Y });
        this.z = Inheritance.callStatic(PCGameKey, "create2", .{ 122, String.literal("z") });
        this.ZERO = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_0, CommonPhoneStrings.getInstance().?.ZERO });
        this.ONE = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_1, CommonPhoneStrings.getInstance().?.ONE });
        this.TWO = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_2, CommonPhoneStrings.getInstance().?.TWO });
        this.THREE = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_3, CommonPhoneStrings.getInstance().?.THREE });
        this.FOUR = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_4, CommonPhoneStrings.getInstance().?.FOUR });
        this.FIVE = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_5, CommonPhoneStrings.getInstance().?.FIVE });
        this.SIX = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_6, CommonPhoneStrings.getInstance().?.SIX });
        this.SEVEN = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_7, CommonPhoneStrings.getInstance().?.SEVEN });
        this.EIGHT = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_8, CommonPhoneStrings.getInstance().?.EIGHT });
        this.NINE = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_9, CommonPhoneStrings.getInstance().?.NINE });
        this.DPAD_UP = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_UP, CommonPhoneStrings.getInstance().?.UP });
        this.DPAD_DOWN = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_DOWN, CommonPhoneStrings.getInstance().?.DOWN });
        this.DPAD_LEFT = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_LEFT, CommonPhoneStrings.getInstance().?.LEFT });
        this.DPAD_RIGHT = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_RIGHT, CommonPhoneStrings.getInstance().?.RIGHT });
        this.DPAD_UP2 = this.DPAD_UP;
        this.DPAD_DOWN2 = this.DPAD_DOWN;
        this.DPAD_LEFT2 = this.DPAD_LEFT;
        this.DPAD_RIGHT2 = this.DPAD_RIGHT;
        this.COMMA = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_COMMA, String.literal("COMMA") });
        this.SPACE = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_SPACE, String.literal("SPACE") });
        this.DEL = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_DELETE, String.literal("DEL") });
        this.STAR = Inheritance.callStatic(PCGameKey, "create2", .{ 42, CommonPhoneStrings.getInstance().?.STAR });
        this.QUESTION = Inheritance.callStatic(PCGameKey, "create2", .{ 47, String.literal("?") });
        this.PERIOD = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_PERIOD, CommonSeps.getInstance().?.PERIOD });
        this.ESCAPE = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_ESCAPE, String.literal("Esc") });
        this.BACK_SPACE = Inheritance.callStatic(PCGameKey, "create2", .{ this.keyEventWrapper.?.VK_BACK_SPACE, String.literal("Backspace") });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*PCKeyFactory {
        return Inheritance.upcast(?*PCKeyFactory, PCKeyFactory.SINGLETON);
    }
    

    pub fn isSubmission(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.ENTER)) {
            return true;
        }
        return false;
    }
    

    pub fn isDelete(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.DEL)) {
            return true;
        }
        return false;
    }
    

    pub fn isBackSpace(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.BACK_SPACE)) {
            return true;
        }
        return false;
    }
    

    pub fn isUp(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.DPAD_UP) or Object.same(input, self.DPAD_UP2)) {
            return true;
        }
        return false;
    }
    

    pub fn isDown(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.DPAD_DOWN) or Object.same(input, self.DPAD_DOWN2)) {
            return true;
        }
        return false;
    }
    

    pub fn isLeft(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.DPAD_LEFT) or Object.same(input, self.DPAD_LEFT2)) {
            return true;
        }
        return false;
    }
    

    pub fn isRight(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.DPAD_RIGHT) or Object.same(input, self.DPAD_RIGHT2)) {
            return true;
        }
        return false;
    }
    

    pub fn isEnter(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.ENTER)) {
            return true;
        }
        return false;
    }
};

