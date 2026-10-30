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
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsProperty = @import("jsinterop/annotations/JsProperty.zig").JsProperty;

pub const CommonStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.string.CommonStrings";
    EMPTY: ?*String = null,
    CREATE_IMAGE: ?*String = null,
    PLEASE_WAIT: ?*String = null,
    PLEASE_WAIT_FOR_SERVER: ?*String = null,
    PERIODS: ?*String = null,
    LOADING: ?*String = null,
    CONSTRUCTOR: ?*String = null,
    START: ?*String = null,
    END: ?*String = null,
    EXCEPTION: ?*String = null,
    EXCEPTION_LABEL: ?*String = null,
    CLEANUP: ?*String = null,
    INIT: ?*String = null,
    CLOSE: ?*String = null,
    UP: ?*String = null,
    DOWN: ?*String = null,
    LEFT: ?*String = null,
    RIGHT: ?*String = null,
    DIRECTION_NAME: []?*String = &.{},
    CREATE: ?*String = null,
    REMOVE: ?*String = null,
    UPDATE: ?*String = null,
    DELETE: ?*String = null,
    delete: ?*String = null,
    LOAD: ?*String = null,
    SAVE: ?*String = null,
    ADD: ?*String = null,
    DROP: ?*String = null,
    INSERT: ?*String = null,
    VISIT: ?*String = null,
    START_METHOD_NAME: ?*String = null,
    END_METHOD_NAME: ?*String = null,
    GET: ?*String = null,
    PROCESS: ?*String = null,
    GET_INSTANCE: ?*String = null,
    GET_LIST: ?*String = null,
    RUN: ?*String = null,
    START_RUNNABLE: ?*String = null,
    RUNNING: ?*String = null,
    END_RUNNABLE: ?*String = null,
    DISABLE: ?*String = null,
    ENABLE: ?*String = null,
    SUCCESS: ?*String = null,
    FAILURE: ?*String = null,
    NOT_IMPLEMENTED: ?*String = null,
    UNKNOWN: ?*String = null,
    ON_EVENT: ?*String = null,
    IS_VALID: ?*String = null,
    TOSTRING: ?*String = null,
    ADD_LISTENER: ?*String = null,
    REMOVE_LISTENER: ?*String = null,
    SIZE: ?*String = null,
    var instance: ?*CommonStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CommonStrings.create();
    }

    fn initFields(this: *Self) void {
        this.EMPTY = String.literal("Empty");
        this.CREATE_IMAGE = String.literal("createImage");
        this.PLEASE_WAIT = String.literal("Please Wait");
        this.PLEASE_WAIT_FOR_SERVER = String.literal("Please Wait Getting Data From Server...");
        this.PERIODS = String.literal("...");
        this.LOADING = String.literal("Loading...");
        this.CONSTRUCTOR = String.literal("Constructor");
        this.START = String.literal("Start");
        this.END = String.literal("End");
        this.EXCEPTION = String.literal("Exception");
        this.EXCEPTION_LABEL = String.literal("Exception: ");
        this.CLEANUP = String.literal("cleanup");
        this.INIT = String.literal("init");
        this.CLOSE = String.literal("close");
        this.UP = String.literal("up");
        this.DOWN = String.literal("down");
        this.LEFT = String.literal("left");
        this.RIGHT = String.literal("right");
        this.DIRECTION_NAME = @constCast(&[_]?*String{ this.DOWN, this.LEFT, this.RIGHT, this.UP })[0..];
        this.CREATE = String.literal("Create");
        this.REMOVE = String.literal("Remove");
        this.UPDATE = String.literal("Update");
        this.DELETE = String.literal("Delete");
        this.delete = String.literal("delete");
        this.LOAD = String.literal("load");
        this.SAVE = String.literal("save");
        this.ADD = String.literal("Add");
        this.DROP = String.literal("Drop");
        this.INSERT = String.literal("Insert");
        this.VISIT = String.literal("visit");
        this.START_METHOD_NAME = this.START;
        this.END_METHOD_NAME = String.literal("end");
        this.GET = String.literal("get");
        this.PROCESS = String.literal("process");
        this.GET_INSTANCE = String.literal("getInstance");
        this.GET_LIST = String.literal("getList");
        this.RUN = String.literal("run");
        this.START_RUNNABLE = String.literal("Start Runnable");
        this.RUNNING = String.literal("Running");
        this.END_RUNNABLE = String.literal("End Runnable");
        this.DISABLE = String.literal("disable");
        this.ENABLE = String.literal("enable");
        this.SUCCESS = String.literal("Command Success");
        this.FAILURE = String.literal("Command Failed");
        this.NOT_IMPLEMENTED = String.literal("Not Implemented");
        this.UNKNOWN = String.literal("Unknown");
        this.ON_EVENT = String.literal("onEvent");
        this.IS_VALID = String.literal("isValid");
        this.TOSTRING = String.literal("toString");
        this.ADD_LISTENER = String.literal("addListener");
        this.REMOVE_LISTENER = String.literal("removeListener");
        this.SIZE = String.literal("size");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*CommonStrings {
        return Inheritance.upcast(?*CommonStrings, CommonStrings.instance);
    }
};

