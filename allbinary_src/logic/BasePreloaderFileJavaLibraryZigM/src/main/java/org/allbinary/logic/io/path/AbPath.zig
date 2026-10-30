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
// package org.allbinary.logic.io.path

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const FilePathData = @import("org/allbinary/logic/io/file/FilePathData.zig").FilePathData;
const FilePathUtil = @import("org/allbinary/logic/io/file/FilePathUtil.zig").FilePathUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const PathUtil = @import("org/allbinary/logic/io/path/PathUtil.zig").PathUtil;

pub const AbPath = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.path.AbPath";
    commonSeps: ?*CommonSeps = null,
    abPathData: ?*AbPathData = null,
    abPathUtil: ?*PathUtil = null,
    EMPTY_STRING: ?*String = null,
    schema: ?*String = null,
    path: ?*String = null,
    nameP: ?*String = null,
    hasSchemaP: bool = false,
    numberOfSeps: i32 = 0,
    const NETWORK_SEP: ?*String = String.literal(":/");

    fn initFields(this: *Self) void {
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.abPathData = Inheritance.upcast(?*AbPathData, AbPathData.getInstance());
        this.abPathUtil = Inheritance.upcast(?*PathUtil, PathUtil.getInstance());
        this.EMPTY_STRING = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.schema = this.EMPTY_STRING;
        this.path = this.EMPTY_STRING;
        this.nameP = this.EMPTY_STRING;
        this.hasSchemaP = false;
        this.numberOfSeps = 0;
    }
    

    pub fn createAbPath() ?*AbPath {
        { // try
            const EMPTY_STRING: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
            return Inheritance.callStatic(AbPath, "create2", .{ EMPTY_STRING, EMPTY_STRING });
        }
        // catch (Exception ex):
//             std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn create2(aPath: ?*String, name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ aPath })) {
            this.schema = Inheritance.upcast(@TypeOf(this.schema), Inheritance.call(this, "getSchema", .{ aPath }));
            this.nameP = name;
            this.path = Inheritance.upcast(@TypeOf(this.path), Inheritance.call(this.abPathUtil.?, "adjustEnd", .{ Inheritance.call(this.abPathUtil.?, "adjust", .{ Inheritance.call(this, "getPathFromPath", .{ aPath }) }) }));
        } else {
            _ = this.init();
            if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ name })) {
                this.nameP = name;
            }
        }
        return this;
    }
    

    pub fn init(self: *Self) void {
        self.schema = self.EMPTY_STRING;
        _ = Inheritance.call(self, "setPath", .{ self.abPathData.?.SEPARATOR });
        self.nameP = self.EMPTY_STRING;
    }
    

    pub fn getSchema(self: *Self, aPath: ?*String) ?*String {
        const beginIndex: i32 = Inheritance.call(aPath.?, "indexOf", .{ self.commonSeps.?.COLON });
        if (beginIndex >= 0) {
            self.hasSchemaP = true;
            return Inheritance.upcast(?*String, aPath.?.substring2(0, beginIndex));
        }
        self.hasSchemaP = false;
        return self.EMPTY_STRING;
    }
    

    pub fn hasSchema(self: *Self) bool {
        return self.hasSchemaP;
    }
    

    // throws Exception
    pub fn getPathFromPath(self: *Self, aPath: ?*String) ?*String {
        const filePathData: ?*FilePathData = Inheritance.upcast(?*FilePathData, FilePathData.getInstance());
        var tempPath: ?*String = aPath;
        if (!self.hasSchema()) {
            tempPath = Inheritance.upcast(@TypeOf(tempPath), Inheritance.call(self.abPathUtil.?, "adjustStart", .{ tempPath }));
        } else {
            var beginIndex: i32 = Inheritance.call(tempPath.?, "indexOf", .{ self.commonSeps.?.COLON });
            if (beginIndex >= 0) {
                beginIndex += 1;
                while (Object.same(Inheritance.call(tempPath.?, "charAt", .{ beginIndex }), self.abPathData.?.SEPARATORCHAR) or Object.same(Inheritance.call(tempPath.?, "charAt", .{ beginIndex }), filePathData.?.SEPARATORCHAR)) {
                    beginIndex += 1;
                    self.numberOfSeps += 1;
                    if (self.numberOfSeps > 2) {
                        std.debug.panic("{any}", .{exception: { _ = String.literal("Should Not Have More Than Two Seps"); break :exception error.Exception; }});
                    }
                }
                tempPath = Inheritance.upcast(@TypeOf(tempPath), tempPath.?.substring2(beginIndex, tempPath.?.length()));
            }
        }
        return tempPath;
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        self.nameP = name;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.nameP;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        if (self.hasSchema()) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.schema });
            _ = Inheritance.call(stringBuffer.?, "append", .{ AbPath.NETWORK_SEP });
        }
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getPath() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.nameP });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn toFileSystemString(self: *Self) ?*String {
        if (self.hasSchema()) {
            const filePathData: ?*FilePathData = Inheritance.upcast(?*FilePathData, FilePathData.getInstance());
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.schema });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.COLON });
            _ = Inheritance.call(stringBuffer.?, "append", .{ filePathData.?.PATH_START });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.callStatic(FilePathUtil, "adjust", .{ self.getPath() }) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.nameP });
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        } else {
            return Inheritance.upcast(?*String, String.plus(Inheritance.callStatic(FilePathUtil, "adjust", .{ self.getPath() }), self.nameP));
        }
    }
    

    pub fn getPath(self: *Self) ?*String {
        return self.path;
    }
    

    pub fn setPath(self: *Self, path: ?*String) void {
        self.path = path;
    }
};

