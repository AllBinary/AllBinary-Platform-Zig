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
// package org.allbinary.string

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsProperty = @import("jsinterop/annotations/JsProperty.zig").JsProperty;

pub const CommonSeps = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.string.CommonSeps";
    NEW_LINE: ?*String = null,
    SEMICOLON: ?*String = null,
    EQUALS: ?*String = null,
    SPACE: ?*String = null,
    COMMA: ?*String = null,
    COLON: ?*String = null,
    PERIOD: ?*String = null,
    UNDERSCORE: ?*String = null,
    COLON_SEP: ?*String = null,
    COMMA_SEP: ?*String = null,
    PARENTHESIS_OPEN: ?*String = null,
    PARENTHESIS_CLOSE: ?*String = null,
    BRACE_OPEN: ?*String = null,
    BRACE_CLOSE: ?*String = null,
    BRACKET_OPEN: ?*String = null,
    BRACKET_CLOSE: ?*String = null,
    DASH: ?*String = null,
    PERCENT: ?*String = null,
    AMPERSAND: ?*String = null,
    FORWARD_SLASH: ?*String = null,
    BACK_SLASH: ?*String = null,
    QUESTION: ?*String = null,
    QUOTE: ?*String = null,
    QUOTE_END: ?*String = null,
    COMMENT: ?*String = null,
    INDENT: ?*String = null,
    var instance: ?*CommonSeps = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CommonSeps.create();
    }

    fn initFields(this: *Self) void {
        this.NEW_LINE = String.literal("\n");
        this.SEMICOLON = String.literal(";");
        this.EQUALS = String.literal("=");
        this.SPACE = String.literal(" ");
        this.COMMA = String.literal(",");
        this.COLON = String.literal(":");
        this.PERIOD = String.literal(".");
        this.UNDERSCORE = String.literal("_");
        this.COLON_SEP = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ this.COLON }).?, "append", .{ this.SPACE }))));
        this.COMMA_SEP = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ this.COMMA }).?, "append", .{ this.SPACE }))));
        this.PARENTHESIS_OPEN = String.literal("(");
        this.PARENTHESIS_CLOSE = String.literal(")");
        this.BRACE_OPEN = String.literal("{");
        this.BRACE_CLOSE = String.literal("}");
        this.BRACKET_OPEN = String.literal("[");
        this.BRACKET_CLOSE = String.literal("]");
        this.DASH = String.literal("-");
        this.PERCENT = String.literal("%");
        this.AMPERSAND = String.literal("&");
        this.FORWARD_SLASH = String.literal("/");
        this.BACK_SLASH = String.literal("\\");
        this.QUESTION = String.literal("?");
        this.QUOTE = String.literal("\"");
        this.QUOTE_END = String.literal("\",");
        this.COMMENT = String.literal("//");
        this.INDENT = String.literal("    ");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*CommonSeps {
        return Inheritance.upcast(?*CommonSeps, CommonSeps.instance);
    }
};

