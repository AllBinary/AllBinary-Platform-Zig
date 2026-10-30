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
// package org.allbinary.logic.io.file.directory

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GitProcessHelper = @import("org/allbinary/java/runtime/process/git/GitProcessHelper.zig").GitProcessHelper;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const CommonDataFileStrings = @import("org/allbinary/logic/io/file/CommonDataFileStrings.zig").CommonDataFileStrings;
const IncludeFileExtensionsBooleanFileVisitor = @import("org/allbinary/logic/io/file/visitor/IncludeFileExtensionsBooleanFileVisitor.zig").IncludeFileExtensionsBooleanFileVisitor;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const TrackedStrings = @import("org/allbinary/logic/io/file/directory/TrackedStrings.zig").TrackedStrings;
const System = @import("java/lang/System.zig").System;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor";
    base: IncludeFileExtensionsBooleanFileVisitor = undefined,
    trackedStrings: ?*TrackedStrings = null,
    gitProcessHelper: ?*GitProcessHelper = null,
    includesString: ?*String = null,

    fn initFields(this: *Self) void {
        this.trackedStrings = Inheritance.upcast(?*TrackedStrings, TrackedStrings.getInstance());
        this.gitProcessHelper = Inheritance.upcast(?*GitProcessHelper, GitProcessHelper.getInstance());
        
    }
    

    pub fn create1(filterStringBasicArrayList: ?*BasicArrayList) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(IncludeFileExtensionsBooleanFileVisitor, "create1", .{ filterStringBasicArrayList }).*;
        this.initFields();
        this.includesString = null;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create2(filterStringBasicArrayList: ?*BasicArrayList, includesString: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(IncludeFileExtensionsBooleanFileVisitor, "create1", .{ filterStringBasicArrayList }).*;
        this.initFields();
        this.includesString = includesString;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn visit(self: *Self, file: ?*AbFile) ?*Boolean {
        if (file.?.isDirectory()) {
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        }
        if (self.includesString == null or Inheritance.call(file.?.getAbsolutePath().?, "indexOf", .{ self.includesString }) >= 0) {
            return Inheritance.upcast(?*Boolean, Inheritance.call(&self.base, "visit", .{ file }));
        } else {
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
    }
    

    pub fn visit2(self: *Self, file: ?*AbFile, fileNameString: ?*String) ?*Boolean {
        const filePath: ?*String = Inheritance.upcast(?*String, file.?.getPath());
        if (Inheritance.call(&self.base, "visit", .{ file, fileNameString })) {
            if (!(Inheritance.call(filePath.?, "contains", .{ self.trackedStrings.?.APPLICATION }) or Inheritance.call(filePath.?, "contains", .{ self.trackedStrings.?.APP }) or Inheritance.call(filePath.?, "contains", .{ self.trackedStrings.?.HTML_TEMP }))) {
                if (!(Inheritance.call(filePath.?, "contains", .{ self.trackedStrings.?.TARGET_PATH_WINDOWS }) or Inheritance.call(filePath.?, "contains", .{ self.trackedStrings.?.TARGET_PATH_UNIX }))) {
                    if (Inheritance.call(self.gitProcessHelper.?, "isTracked", .{ file })) {
                        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
                    } else {
                    }
                } else {
                }
            } else {
            }
        }
        return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn main(args: []?*String) void {
        _ = args;
        const commonFileStrings: ?*CommonDataFileStrings = Inheritance.upcast(?*CommonDataFileStrings, CommonDataFileStrings.getInstance());
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(list.?, "add", .{ commonFileStrings.?.JAVA });
        const filePath: ?*String = String.literal("G:\\mnt\\bc\\mydev\\games\\ZeptoRacer\\platform\\j2se\\ZeptoRacerStaticPathsJ2SEM\\target\\dependency\\org\\allbinary\\logic\\system\\security\\licensing\\ZeptoRacerPCClientInformation.java");
        const result: bool = Inheritance.call(Inheritance.callStatic(DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor, "create1", .{ list }), "visit", .{ Inheritance.callStatic(AbFile, "createAbFileFromRawPath", .{ filePath }) });
        _ = std.debug.print("{s}\n", .{String.text(String.plus(String.plus(filePath, String.literal(" is Tracked: ")), result))});
    }
};

