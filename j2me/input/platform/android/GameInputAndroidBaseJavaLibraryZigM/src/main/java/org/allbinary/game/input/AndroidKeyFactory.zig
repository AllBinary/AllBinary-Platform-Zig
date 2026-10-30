// Generated Code Do Not Modify
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const KeyEvent = @import("android/view/KeyEvent.zig").KeyEvent;
const ActivityFractureUtil = @import("org/allbinary/android/ActivityFractureUtil.zig").ActivityFractureUtil;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AndroidGameKey = @import("org/allbinary/game/input/AndroidGameKey.zig").AndroidGameKey;

pub const AndroidKeyFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.AndroidKeyFactory";
    base: ActivityFractureUtil = undefined,
    logUtil: ?*LogUtil = null,
    UNKNOWN: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_L1: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_R1: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_THUMBR: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_THUMBL: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_START: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_MODE: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_B: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_A: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_X: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_Y: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_L2: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_R2: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_SELECT: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_C: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_Z: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_1: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_10: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_11: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_12: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_13: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_14: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_15: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_16: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_2: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_3: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_4: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_5: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_6: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_7: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_8: ?*AndroidGameKey = null,
    KEYCODE_BUTTON_9: ?*AndroidGameKey = null,
    SOFT_LEFT: ?*AndroidGameKey = null,
    SOFT_RIGHT: ?*AndroidGameKey = null,
    HOME: ?*AndroidGameKey = null,
    BACK: ?*AndroidGameKey = null,
    CALL: ?*AndroidGameKey = null,
    ENDCALL: ?*AndroidGameKey = null,
    ZERO: ?*AndroidGameKey = null,
    ONE: ?*AndroidGameKey = null,
    TWO: ?*AndroidGameKey = null,
    THREE: ?*AndroidGameKey = null,
    FOUR: ?*AndroidGameKey = null,
    FIVE: ?*AndroidGameKey = null,
    SIX: ?*AndroidGameKey = null,
    SEVEN: ?*AndroidGameKey = null,
    EIGHT: ?*AndroidGameKey = null,
    NINE: ?*AndroidGameKey = null,
    STAR: ?*AndroidGameKey = null,
    POUND: ?*AndroidGameKey = null,
    DPAD_UP: ?*AndroidGameKey = null,
    DPAD_DOWN: ?*AndroidGameKey = null,
    DPAD_LEFT: ?*AndroidGameKey = null,
    DPAD_RIGHT: ?*AndroidGameKey = null,
    DPAD_CENTER: ?*AndroidGameKey = null,
    VOLUME_UP: ?*AndroidGameKey = null,
    VOLUME_DOWN: ?*AndroidGameKey = null,
    POWER: ?*AndroidGameKey = null,
    CAMERA: ?*AndroidGameKey = null,
    CLEAR: ?*AndroidGameKey = null,
    A: ?*AndroidGameKey = null,
    B: ?*AndroidGameKey = null,
    C: ?*AndroidGameKey = null,
    D: ?*AndroidGameKey = null,
    E: ?*AndroidGameKey = null,
    F: ?*AndroidGameKey = null,
    G: ?*AndroidGameKey = null,
    H: ?*AndroidGameKey = null,
    I: ?*AndroidGameKey = null,
    J: ?*AndroidGameKey = null,
    K: ?*AndroidGameKey = null,
    L: ?*AndroidGameKey = null,
    M: ?*AndroidGameKey = null,
    N: ?*AndroidGameKey = null,
    O: ?*AndroidGameKey = null,
    P: ?*AndroidGameKey = null,
    Q: ?*AndroidGameKey = null,
    R: ?*AndroidGameKey = null,
    S: ?*AndroidGameKey = null,
    T: ?*AndroidGameKey = null,
    U: ?*AndroidGameKey = null,
    V: ?*AndroidGameKey = null,
    W: ?*AndroidGameKey = null,
    X: ?*AndroidGameKey = null,
    Y: ?*AndroidGameKey = null,
    Z: ?*AndroidGameKey = null,
    COMMA: ?*AndroidGameKey = null,
    PERIOD: ?*AndroidGameKey = null,
    ALT_LEFT: ?*AndroidGameKey = null,
    ALT_RIGHT: ?*AndroidGameKey = null,
    SHIFT_LEFT: ?*AndroidGameKey = null,
    SHIFT_RIGHT: ?*AndroidGameKey = null,
    TAB: ?*AndroidGameKey = null,
    SPACE: ?*AndroidGameKey = null,
    SYM: ?*AndroidGameKey = null,
    EXPLORER: ?*AndroidGameKey = null,
    ENVELOPE: ?*AndroidGameKey = null,
    ENTER: ?*AndroidGameKey = null,
    DEL: ?*AndroidGameKey = null,
    GRAVE: ?*AndroidGameKey = null,
    MINUS: ?*AndroidGameKey = null,
    EQUALS: ?*AndroidGameKey = null,
    LEFT_BRACKET: ?*AndroidGameKey = null,
    RIGHT_BRACKET: ?*AndroidGameKey = null,
    BACKSLASH: ?*AndroidGameKey = null,
    SEMICOLON: ?*AndroidGameKey = null,
    APOSTROPHE: ?*AndroidGameKey = null,
    SLASH: ?*AndroidGameKey = null,
    AT: ?*AndroidGameKey = null,
    NUM: ?*AndroidGameKey = null,
    HEADSETHOOK: ?*AndroidGameKey = null,
    FOCUS: ?*AndroidGameKey = null,
    PLUS: ?*AndroidGameKey = null,
    MENU: ?*AndroidGameKey = null,
    NOTIFICATION: ?*AndroidGameKey = null,
    SEARCH: ?*AndroidGameKey = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.UNKNOWN = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_UNKNOWN, String.literal("UNKNOWN") });
        this.KEYCODE_BUTTON_L1 = this.UNKNOWN;
        this.KEYCODE_BUTTON_R1 = this.UNKNOWN;
        this.KEYCODE_BUTTON_THUMBR = this.UNKNOWN;
        this.KEYCODE_BUTTON_THUMBL = this.UNKNOWN;
        this.KEYCODE_BUTTON_START = this.UNKNOWN;
        this.KEYCODE_BUTTON_MODE = this.UNKNOWN;
        this.KEYCODE_BUTTON_B = this.UNKNOWN;
        this.KEYCODE_BUTTON_A = this.UNKNOWN;
        this.KEYCODE_BUTTON_X = this.UNKNOWN;
        this.KEYCODE_BUTTON_Y = this.UNKNOWN;
        this.KEYCODE_BUTTON_L2 = this.UNKNOWN;
        this.KEYCODE_BUTTON_R2 = this.UNKNOWN;
        this.KEYCODE_BUTTON_SELECT = this.UNKNOWN;
        this.KEYCODE_BUTTON_C = this.UNKNOWN;
        this.KEYCODE_BUTTON_Z = this.UNKNOWN;
        this.KEYCODE_BUTTON_1 = this.UNKNOWN;
        this.KEYCODE_BUTTON_10 = this.UNKNOWN;
        this.KEYCODE_BUTTON_11 = this.UNKNOWN;
        this.KEYCODE_BUTTON_12 = this.UNKNOWN;
        this.KEYCODE_BUTTON_13 = this.UNKNOWN;
        this.KEYCODE_BUTTON_14 = this.UNKNOWN;
        this.KEYCODE_BUTTON_15 = this.UNKNOWN;
        this.KEYCODE_BUTTON_16 = this.UNKNOWN;
        this.KEYCODE_BUTTON_2 = this.UNKNOWN;
        this.KEYCODE_BUTTON_3 = this.UNKNOWN;
        this.KEYCODE_BUTTON_4 = this.UNKNOWN;
        this.KEYCODE_BUTTON_5 = this.UNKNOWN;
        this.KEYCODE_BUTTON_6 = this.UNKNOWN;
        this.KEYCODE_BUTTON_7 = this.UNKNOWN;
        this.KEYCODE_BUTTON_8 = this.UNKNOWN;
        this.KEYCODE_BUTTON_9 = this.UNKNOWN;
        this.SOFT_LEFT = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_SOFT_LEFT, String.literal("SOFT_LEFT") });
        this.SOFT_RIGHT = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_SOFT_RIGHT, String.literal("SOFT_RIGHT") });
        this.HOME = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_HOME, String.literal("HOME") });
        this.BACK = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BACK, String.literal("BACK") });
        this.CALL = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_CALL, String.literal("CALL") });
        this.ENDCALL = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_ENDCALL, String.literal("ENDCALL") });
        this.ZERO = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_0, CommonPhoneStrings.getInstance().?.ZERO });
        this.ONE = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_1, CommonPhoneStrings.getInstance().?.ONE });
        this.TWO = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_2, CommonPhoneStrings.getInstance().?.TWO });
        this.THREE = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_3, CommonPhoneStrings.getInstance().?.THREE });
        this.FOUR = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_4, CommonPhoneStrings.getInstance().?.FOUR });
        this.FIVE = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_5, CommonPhoneStrings.getInstance().?.FIVE });
        this.SIX = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_6, CommonPhoneStrings.getInstance().?.SIX });
        this.SEVEN = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_7, CommonPhoneStrings.getInstance().?.SEVEN });
        this.EIGHT = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_8, CommonPhoneStrings.getInstance().?.EIGHT });
        this.NINE = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_9, CommonPhoneStrings.getInstance().?.NINE });
        this.STAR = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_STAR, CommonPhoneStrings.getInstance().?.STAR });
        this.POUND = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_POUND, CommonPhoneStrings.getInstance().?.POUND });
        this.DPAD_UP = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_DPAD_UP, String.literal("UP") });
        this.DPAD_DOWN = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_DPAD_DOWN, String.literal("DOWN") });
        this.DPAD_LEFT = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_DPAD_LEFT, String.literal("LEFT") });
        this.DPAD_RIGHT = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_DPAD_RIGHT, String.literal("RIGHT") });
        this.DPAD_CENTER = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_DPAD_CENTER, String.literal("CENTER") });
        this.VOLUME_UP = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_VOLUME_UP, String.literal("VOLUME_UP") });
        this.VOLUME_DOWN = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_VOLUME_DOWN, String.literal("VOLUME_DOWN") });
        this.POWER = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_POWER, String.literal("POWER") });
        this.CAMERA = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_CAMERA, String.literal("CAMERA") });
        this.CLEAR = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_CLEAR, String.literal("CLEAR") });
        this.A = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_A, String.literal("A") });
        this.B = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_B, String.literal("B") });
        this.C = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_C, String.literal("C") });
        this.D = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_D, String.literal("D") });
        this.E = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_E, String.literal("E") });
        this.F = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_F, String.literal("F") });
        this.G = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_G, String.literal("G") });
        this.H = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_H, String.literal("H") });
        this.I = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_I, String.literal("I") });
        this.J = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_J, String.literal("J") });
        this.K = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_K, String.literal("K") });
        this.L = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_L, String.literal("L") });
        this.M = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_M, String.literal("M") });
        this.N = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_N, String.literal("N") });
        this.O = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_O, String.literal("O") });
        this.P = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_P, String.literal("P") });
        this.Q = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_Q, String.literal("Q") });
        this.R = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_R, String.literal("R") });
        this.S = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_S, String.literal("S") });
        this.T = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_T, String.literal("T") });
        this.U = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_U, String.literal("U") });
        this.V = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_V, String.literal("V") });
        this.W = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_W, String.literal("W") });
        this.X = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_X, String.literal("X") });
        this.Y = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_Y, String.literal("Y") });
        this.Z = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_Z, String.literal("Z") });
        this.COMMA = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_COMMA, String.literal("COMMA") });
        this.PERIOD = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_PERIOD, AbPathData.getInstance().?.EXTENSION_SEP });
        this.ALT_LEFT = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_ALT_LEFT, String.literal("ALT_LEFT") });
        this.ALT_RIGHT = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_ALT_RIGHT, String.literal("ALT_RIGHT") });
        this.SHIFT_LEFT = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_SHIFT_LEFT, String.literal("SHIFT_LEFT") });
        this.SHIFT_RIGHT = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_SHIFT_RIGHT, String.literal("SHIFT_RIGHT") });
        this.TAB = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_TAB, String.literal("TAB") });
        this.SPACE = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_SPACE, String.literal("SPACE") });
        this.SYM = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_SYM, String.literal("SYM") });
        this.EXPLORER = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_EXPLORER, String.literal("EXPLORER") });
        this.ENVELOPE = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_ENVELOPE, String.literal("ENVELOPE") });
        this.ENTER = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_ENTER, String.literal("ENTER") });
        this.DEL = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_DEL, String.literal("DEL") });
        this.GRAVE = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_GRAVE, String.literal("GRAVE") });
        this.MINUS = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_MINUS, String.literal("MINUS") });
        this.EQUALS = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_EQUALS, String.literal("EQUALS") });
        this.LEFT_BRACKET = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_LEFT_BRACKET, String.literal("LEFT_BRACKET") });
        this.RIGHT_BRACKET = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_RIGHT_BRACKET, String.literal("RIGHT_BRACKET") });
        this.BACKSLASH = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BACKSLASH, String.literal("BACKSLASH") });
        this.SEMICOLON = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_SEMICOLON, String.literal("SEMICOLON") });
        this.APOSTROPHE = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_APOSTROPHE, String.literal("APOSTROPHE") });
        this.SLASH = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_SLASH, String.literal("SLASH") });
        this.AT = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_AT, String.literal("AT") });
        this.NUM = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_NUM, String.literal("NUM") });
        this.HEADSETHOOK = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_HEADSETHOOK, String.literal("HEADSETHOOK") });
        this.FOCUS = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_FOCUS, String.literal("FOCUS") });
        this.PLUS = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_PLUS, String.literal("PLUS") });
        this.MENU = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_MENU, String.literal("MENU") });
        this.NOTIFICATION = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_NOTIFICATION, String.literal("NOTIFICATION") });
        this.SEARCH = Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_SEARCH, String.literal("SEARCH") });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ActivityFractureUtil.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self) void {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Start/End"), self, commonStrings.?.INIT });
    }
    

    pub fn isSubmission(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.ENTER)) {
            return true;
        } else if (Object.same(input, self.DPAD_CENTER)) {
            return true;
        }
        return false;
    }
    

    pub fn isDelete(self: *Self, input: ?*Input) bool {
        _ = input;
        _ = self;
        return false;
    }
    

    pub fn isBackSpace(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.DEL)) {
            return true;
        }
        return false;
    }
    

    pub fn isLeft(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.DPAD_LEFT)) {
            return true;
        }
        return false;
    }
    

    pub fn isRight(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.DPAD_RIGHT)) {
            return true;
        }
        return false;
    }
    

    pub fn isUp(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.DPAD_UP)) {
            return true;
        }
        return false;
    }
    

    pub fn isDown(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.DPAD_DOWN)) {
            return true;
        }
        return false;
    }
    

    pub fn isEnter(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.DPAD_CENTER)) {
            return true;
        } else if (Object.same(input, self.ENTER)) {
            return true;
        } else if (Object.same(input, self.CALL)) {
            return true;
        }
        return false;
    }
};

