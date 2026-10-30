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
// package views.admin.inventory

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const ByteArrayInputStream = @import("java/io/ByteArrayInputStream.zig").ByteArrayInputStream;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const ItemInterface = @import("org/allbinary/business/user/commerce/inventory/item/ItemInterface.zig").ItemInterface;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const UploadMediaSingleton = @import("org/allbinary/logic/communication/http/file/upload/media/UploadMediaSingleton.zig").UploadMediaSingleton;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const FileUtil = @import("org/allbinary/logic/io/file/FileUtil.zig").FileUtil;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const MediaData = @import("org/allbinary/logic/visual/media/MediaData.zig").MediaData;
const MediaTypeData = @import("org/allbinary/logic/visual/media/MediaTypeData.zig").MediaTypeData;
const MediaUtil = @import("org/allbinary/logic/visual/media/MediaUtil.zig").MediaUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const InventoryUploadMediaUtil = struct {
    const Self = @This();
    pub const java_name = "views.admin.inventory.InventoryUploadMediaUtil";
    logUtil: ?*LogUtil = null,
    mediaUtil: ?*MediaUtil = null,
    LARGEWIDTH: i32 = 0,
    LARGEHEIGHT: i32 = 0,
    MEDIUMWIDTH: i32 = 0,
    MEDIUMHEIGHT: i32 = 0,
    SMALLWIDTH: i32 = 0,
    SMALLHEIGHT: i32 = 0,
    SMALL: ?*String = null,
    MEDIUM: ?*String = null,
    LARGE: ?*String = null,
    storeFrontInterface: ?*StoreFrontInterface = null,
    itemInterface: ?*ItemInterface = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.mediaUtil = Inheritance.upcast(?*MediaUtil, MediaUtil.getInstance());
        this.LARGEWIDTH = 1024;
        this.LARGEHEIGHT = 1024;
        this.MEDIUMWIDTH = 256;
        this.MEDIUMHEIGHT = 256;
        this.SMALLWIDTH = 128;
        this.SMALLHEIGHT = 128;
        this.SMALL = String.literal("Small");
        this.MEDIUM = String.literal("Medium");
        this.LARGE = String.literal("Large");
        
        
    }
    

    pub fn create2(storeFrontInterface: ?*StoreFrontInterface, itemInterface: ?*ItemInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.storeFrontInterface = storeFrontInterface;
        this.itemInterface = itemInterface;
        return this;
    }
    

    // throws Exception
    pub fn saveFiles(self: *Self, byteArray: []i8, fileName: ?*String, mediaData: ?*MediaData) ?*ItemInterface {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Start FileName: "), fileName), self, String.literal("saveFiles()") });
        }
        if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ fileName })) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Image File Name Was Null"); break :exception error.Exception; }});
        }
        const fileUtil: ?*FileUtil = Inheritance.upcast(?*FileUtil, FileUtil.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getWebappPath() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self.storeFrontInterface.?, "getCurrentHostNamePath").getCurrentHostNamePath() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self.itemInterface.?, "getCategory").getCategory() });
        const fullPath: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        const imageDirectoryFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ fullPath }));
        if (!imageDirectoryFile.?.isDirectory()) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Unable to save file to non existant directory"); break :exception error.Exception; }});
        }
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ fullPath });
        _ = Inheritance.call(stringBuffer.?, "append", .{ fileName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.EXTENSION_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ mediaData.?.getName() });
        const originalImageFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ Object.toString(Object.of(stringBuffer)) }));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Saving Original Image: "), originalImageFile), self, String.literal("saveFiles()") });
        }
        _ = originalImageFile.?.createNewFile();
        _ = Inheritance.call(fileUtil.?, "write", .{ Inheritance.callStatic(ByteArrayInputStream, "create1", .{ byteArray }), originalImageFile });
        const uploadMedia: ?*UploadMediaSingleton = Inheritance.upcast(?*UploadMediaSingleton, UploadMediaSingleton.getInstance());
        const isMediaSupported: bool = Inheritance.call(uploadMedia.?, "isWriterSupported", .{ mediaData.?.getName() }) or Inheritance.call(uploadMedia.?, "isReaderSupported", .{ mediaData.?.getName() });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Is Image Type: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ mediaData.?.getName() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" supported: ") });
            _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ isMediaSupported });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("saveFiles()") });
        }
        const defaultMediaData: ?*MediaData = Inheritance.upcast(?*MediaData, MediaData.getDefault());
        _ = Inheritance.call(self, "setFileNames", .{ fileName });
        if (isMediaSupported) {
            const isMediaResizable: bool = Inheritance.call(uploadMedia.?, "isWriterMedia", .{ mediaData.?.getName(), MediaTypeData.getInstance().?.RESIZABLE_MEDIA });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Is ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(mediaData)) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Image Resize Supported:") });
                _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ Inheritance.call(uploadMedia.?, "isSupported", .{ mediaData.?.getName() }) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" WriterMedia: ") });
                _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ isMediaResizable });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("saveFiles()") });
            }
            if (isMediaResizable) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Saving Small Image: "), Inheritance.receiver(self.itemInterface.?, "getSmallImage").getSmallImage()), self, String.literal("saveFiles()") });
                }
                _ = Inheritance.call(self.mediaUtil.?, "saveImageFile", .{ originalImageFile, Inheritance.receiver(self.itemInterface.?, "getSmallImage").getSmallImage(), fullPath, mediaData, self.SMALLWIDTH, self.SMALLHEIGHT });
                _ = Inheritance.call(self.mediaUtil.?, "saveImageFile", .{ originalImageFile, Inheritance.receiver(self.itemInterface.?, "getMediumImage").getMediumImage(), fullPath, mediaData, self.MEDIUMWIDTH, self.MEDIUMHEIGHT });
                _ = Inheritance.call(self.mediaUtil.?, "saveImageFile", .{ originalImageFile, Inheritance.receiver(self.itemInterface.?, "getLargeImage").getLargeImage(), fullPath, mediaData, self.LARGEWIDTH, self.LARGEHEIGHT });
            } else {
                const isConvertable: bool = Inheritance.call(mediaData.?, "isConvertableTo", .{ defaultMediaData });
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
                    _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Converting: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ defaultMediaData.?.getName() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" into ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ mediaData.?.getName() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" if Convertable is it: ") });
                    _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ isConvertable });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("saveFiles()") });
                }
                if (isConvertable) {
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Saving Small Image: "), Inheritance.receiver(self.itemInterface.?, "getSmallImage").getSmallImage()), self, String.literal("saveFiles()") });
                    }
                    _ = Inheritance.call(self.mediaUtil.?, "saveImageFile", .{ originalImageFile, Inheritance.receiver(self.itemInterface.?, "getSmallImage").getSmallImage(), fullPath, defaultMediaData, self.SMALLWIDTH, self.SMALLHEIGHT });
                    _ = Inheritance.call(self.mediaUtil.?, "saveImageFile", .{ originalImageFile, Inheritance.receiver(self.itemInterface.?, "getMediumImage").getMediumImage(), fullPath, defaultMediaData, self.MEDIUMWIDTH, self.MEDIUMHEIGHT });
                    _ = Inheritance.call(self.mediaUtil.?, "saveImageFile", .{ originalImageFile, Inheritance.receiver(self.itemInterface.?, "getLargeImage").getLargeImage(), fullPath, defaultMediaData, self.LARGEWIDTH, self.LARGEHEIGHT });
                } else {
                    const smallImageFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ Inheritance.receiver(self.itemInterface.?, "getSmallImage").getSmallImage() }));
                    _ = smallImageFile.?.createNewFile();
                    _ = Inheritance.call(fileUtil.?, "write", .{ Inheritance.callStatic(ByteArrayInputStream, "create1", .{ byteArray }), smallImageFile });
                    const mediumImageFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ Inheritance.receiver(self.itemInterface.?, "getMediumImage").getMediumImage() }));
                    _ = smallImageFile.?.createNewFile();
                    _ = Inheritance.call(fileUtil.?, "write", .{ Inheritance.callStatic(ByteArrayInputStream, "create1", .{ byteArray }), mediumImageFile });
                    const largeImageFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ Inheritance.receiver(self.itemInterface.?, "getSmallImage").getSmallImage() }));
                    _ = largeImageFile.?.createNewFile();
                    _ = Inheritance.call(fileUtil.?, "write", .{ Inheritance.callStatic(ByteArrayInputStream, "create1", .{ byteArray }), largeImageFile });
                }
            }
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(self.logUtil.?, "putF", .{ commonStrings.?.END, self, String.literal("saveFiles()") });
        }
        return self.itemInterface;
    }
    

    pub fn setFileNames(self: *Self, fileName: ?*String) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self.itemInterface.?, "getId").getId() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.EXTENSION_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(MediaData.getDefault().?, "getName").getName() });
        const END: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ fileName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.SMALL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ END });
        var newImageFileName: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(self.itemInterface.?, "setSmallImage", .{ newImageFileName });
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ fileName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.MEDIUM });
        _ = Inheritance.call(stringBuffer.?, "append", .{ END });
        newImageFileName = Inheritance.upcast(@TypeOf(newImageFileName), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(self.itemInterface.?, "setMediumImage", .{ newImageFileName });
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ fileName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.LARGE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ END });
        newImageFileName = Inheritance.upcast(@TypeOf(newImageFileName), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(self.itemInterface.?, "setLargeImage", .{ newImageFileName });
    }
};

