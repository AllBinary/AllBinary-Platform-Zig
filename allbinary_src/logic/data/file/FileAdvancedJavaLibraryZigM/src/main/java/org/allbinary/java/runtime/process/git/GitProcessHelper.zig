// 
// AllBinary Open License Version 1 
// Copyright (c) 2026 AllBinary 
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
// package org.allbinary.java.runtime.process.git

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const File = @import("java/io/File.zig").File;
// const IOException = @import("java/io/IOException.zig").IOException;
// const StandardCharsets = @import("java/nio/charset/StandardCharsets.zig").StandardCharsets;
// const ArrayList = @import("java/util/ArrayList.zig").ArrayList;
// const List = @import("java/util/List.zig").List;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbFileNativeUtil = @import("org/allbinary/logic/io/file/AbFileNativeUtil.zig").AbFileNativeUtil;
const TrackedStrings = @import("org/allbinary/logic/io/file/directory/TrackedStrings.zig").TrackedStrings;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

//Do not use this instead just skip target, build, Application paths.
pub const GitProcessHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.java.runtime.process.git.GitProcessHelper";
    trackedStrings: ?*TrackedStrings = null,
    var instance: ?*GitProcessHelper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GitProcessHelper.create();
    }

    fn initFields(this: *Self) void {
        this.trackedStrings = Inheritance.upcast(?*TrackedStrings, TrackedStrings.getInstance());
    }
    

    pub fn getInstance() ?*GitProcessHelper {
        return Inheritance.upcast(?*GitProcessHelper, GitProcessHelper.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        const THIS_IS_SLOW: ?*String = String.literal("This is slow consider path exclusion instead");
        _ = Inheritance.call(logUtil.?, "putF", .{ THIS_IS_SLOW, this, commonStrings.?.CONSTRUCTOR });
        return this;
    }
    

    // throws IOException, InterruptedException
    pub fn trackedFiles(self: *Self, rootAsString: ?*String, pathspec: ?*String) ?*List {
        return Inheritance.upcast(?*List, Inheritance.call(self, "trackedFiles", .{ rootAsString, pathspec, String.literal(".java") }));
    }
    

    // throws IOException, InterruptedException
    pub fn trackedFiles3(self: *Self, rootAsString: ?*String, pathspec: ?*String, suffix: ?*String) ?*List {
        const process: ?*Process = Inheritance.upcast(?*Process, Inheritance.receiverOf(Inheritance.call(Inheritance.callStatic(ProcessBuilder, "create7", .{ self.trackedStrings.?.GIT_COMMAND, self.trackedStrings.?.CHANGE_DIRECTORY_OPTION, rootAsString, self.trackedStrings.?.LIST_FILES_COMMAND, self.trackedStrings.?.SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE, self.trackedStrings.?.PATHSPEC_SEPARATOR, pathspec }), "redirectError", .{ ProcessBuilder.Redirect.?.INHERIT }).?, "start").start());
        const output: []i8 = Inheritance.receiverOf(process.?.getInputStream().?, "readAllBytes").readAllBytes();
        const exitCode: i32 = process.?.waitFor();
        if (exitCode != 0) {
            std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("git ls-files failed for ") }).?, "append", .{ rootAsString }).?, "append", .{ String.literal(" with exit code ") }).?, "appendint", .{ exitCode }))); break :exception error.IllegalStateException; }});
        }
        const files: ?*List = Inheritance.upcast(?*List, ArrayList.create());
        var start: i32 = 0;
        var relativePath: ?*String = null;
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(output.len))) : (index += 1) {
            if (@as(i32, @intCast(output[@intCast(index)])) == 0) {
                relativePath = Inheritance.callStatic(String, "create4", .{ output, start, index - start, StandardCharsets.UTF_8 });
                if (Inheritance.call(relativePath.?, "endsWith", .{ suffix })) {
                    _ = Inheritance.call(files.?, "add", .{ relativePath });
                }
                start = index + 1;
            }
            }
        }
        return files;
    }
    

    pub fn isTracked(self: *Self, file: ?*AbFile) bool {
        { // try
            const nativeFile: ?*File = Inheritance.upcast(?*File, Inheritance.callStatic(AbFileNativeUtil, "get", .{ file }));
            const parentFile: ?*File = Inheritance.upcast(?*File, nativeFile.?.getParentFile());
            const process: ?*Process = Inheritance.upcast(?*Process, Inheritance.receiverOf(Inheritance.call(Inheritance.callStatic(ProcessBuilder, "create7", .{ self.trackedStrings.?.GIT_COMMAND, self.trackedStrings.?.CHANGE_DIRECTORY_OPTION, parentFile.?.getPath(), self.trackedStrings.?.LIST_FILES_COMMAND, self.trackedStrings.?.ERROR_UNMATCH_OPTION, self.trackedStrings.?.PATHSPEC_SEPARATOR, nativeFile.?.getName() }), "redirectErrorStream", .{ true }).?, "start").start());
            _ = Inheritance.receiverOf(process.?.getInputStream().?, "readAllBytes").readAllBytes();
            return process.?.waitFor() == 0;
        }
        // catch (Exception e):
//             return false;
    }
};

