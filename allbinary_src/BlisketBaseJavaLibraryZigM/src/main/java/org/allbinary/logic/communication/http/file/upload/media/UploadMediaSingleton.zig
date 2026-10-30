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
// package org.allbinary.logic.communication.http.file.upload.media

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const MediaData = @import("org/allbinary/logic/visual/media/MediaData.zig").MediaData;
const MediaIOUtil = @import("org/allbinary/logic/visual/media/MediaIOUtil.zig").MediaIOUtil;
const MediaTypeData = @import("org/allbinary/logic/visual/media/MediaTypeData.zig").MediaTypeData;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const UploadMediaSingleton = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    readerFileTypesHashMap: ?*HashMap = null,
    writerFileTypesHashMap: ?*HashMap = null,
    var uploadMedia: ?*UploadMediaSingleton = null;

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.readerFileTypesHashMap = Inheritance.upcast(@TypeOf(this.readerFileTypesHashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        this.writerFileTypesHashMap = Inheritance.upcast(@TypeOf(this.writerFileTypesHashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, MediaData.toHashMap());
        const set: ?*Set = Inheritance.upcast(?*Set, hashMap.?.keySet());
        const mediaDataNameArray: []?Object = set.?.toArray();
        const size: i32 = @as(i32, @intCast(mediaDataNameArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const mediaDataName: ?*String = Inheritance.cast(?*String, mediaDataNameArray[@intCast(index)]);
            const mediaData: ?*MediaData = Inheritance.cast(?*MediaData, Inheritance.call(hashMap.?, "get", .{ mediaDataName }));
            _ = Inheritance.call(this.readerFileTypesHashMap.?, "put", .{ mediaData.?.getName(), mediaData.?.getType() });
            }
        }
        const mediaIOUtil: ?*MediaIOUtil = Inheritance.upcast(?*MediaIOUtil, MediaIOUtil.getInstance());
        const RESIZABLE_MEDIA: ?*String = Inheritance.upcast(?*String, MediaTypeData.getInstance().?.RESIZABLE_MEDIA);
        const readerFileTypes: []?*String = mediaIOUtil.?.getReaderFormatNames();
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(readerFileTypes.len))) : (index += 1) {
            _ = Inheritance.call(this.readerFileTypesHashMap.?, "put", .{ readerFileTypes[@intCast(index)], RESIZABLE_MEDIA });
            }
        }
        const writerFileTypes: []?*String = mediaIOUtil.?.getWriterFormatNames();
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(writerFileTypes.len))) : (index += 1) {
            _ = Inheritance.call(this.writerFileTypesHashMap.?, "put", .{ writerFileTypes[@intCast(index)], RESIZABLE_MEDIA });
            }
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Supported Media Readers: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(this.readerFileTypesHashMap)) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Writers: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(this.writerFileTypesHashMap)) });
            _ = Inheritance.call(this.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), this, this.commonStrings.?.CONSTRUCTOR });
        }
        return this;
    }
    

    pub fn getInstance() ?*UploadMediaSingleton {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        if (UploadMediaSingleton.uploadMedia == null) {
            UploadMediaSingleton.uploadMedia = Inheritance.upcast(@TypeOf(UploadMediaSingleton.uploadMedia), UploadMediaSingleton.create());
        }
        return Inheritance.upcast(?*UploadMediaSingleton, UploadMediaSingleton.uploadMedia);
    }
    

    pub fn isReaderSupported(self: *Self, mediaFileType: ?*String) bool {
        return Inheritance.call(self.readerFileTypesHashMap.?, "containsKey", .{ mediaFileType });
    }
    

    pub fn isWriterSupported(self: *Self, mediaFileType: ?*String) bool {
        return Inheritance.call(self.readerFileTypesHashMap.?, "containsKey", .{ mediaFileType });
    }
    

    pub fn isSupported(self: *Self, mediaFileType: ?*String) bool {
        return Inheritance.call(self, "isReaderSupported", .{ mediaFileType }) and Inheritance.call(self, "isWriterSupported", .{ mediaFileType });
    }
    

    pub fn isMedia(self: *Self, mediaFileType: ?*String, aMediaType: ?*String) bool {
        return Inheritance.call(self, "isReaderMedia", .{ mediaFileType, aMediaType }) and Inheritance.call(self, "isWriterMedia", .{ mediaFileType, aMediaType });
    }
    

    pub fn isReaderMedia(self: *Self, mediaFileType: ?*String, aMediaType: ?*String) bool {
        return Inheritance.call(self, "isMedia", .{ mediaFileType, aMediaType, self.readerFileTypesHashMap });
    }
    

    pub fn isWriterMedia(self: *Self, mediaFileType: ?*String, aMediaType: ?*String) bool {
        return Inheritance.call(self, "isMedia", .{ mediaFileType, aMediaType, self.writerFileTypesHashMap });
    }
    

    pub fn isMedia3(self: *Self, mediaFileType: ?*String, aMediaType: ?*String, hashMap: ?*HashMap) bool {
        _ = self;
        if (Inheritance.call(hashMap.?, "containsKey", .{ mediaFileType })) {
            const mediaType: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ mediaFileType }));
            if (Inheritance.call(mediaType.?, "compareTo", .{ aMediaType }) == 0) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }
};

