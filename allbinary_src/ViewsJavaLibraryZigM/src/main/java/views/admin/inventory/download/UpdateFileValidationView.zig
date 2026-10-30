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
// package views.admin.inventory.download

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const BasicItemData = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemData.zig").BasicItemData;
const BasicItemValidation = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemValidation.zig").BasicItemValidation;
const DownloadItemData = @import("org/allbinary/business/user/commerce/inventory/item/download/DownloadItemData.zig").DownloadItemData;
const DownloadableItem = @import("org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem.zig").DownloadableItem;
const DownloadableItemValidation = @import("org/allbinary/business/user/commerce/inventory/item/download/DownloadableItemValidation.zig").DownloadableItemValidation;
const MoneyException = @import("org/allbinary/business/user/commerce/money/MoneyException.zig").MoneyException;
const InventoryEntity = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity.zig").InventoryEntity;
const InventoryEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory.zig").InventoryEntityFactory;
const GLOBALS2 = @import("org/allbinary/globals/GLOBALS2.zig").GLOBALS2;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const HttpFileUploadUtil = @import("org/allbinary/logic/communication/http/file/upload/HttpFileUploadUtil.zig").HttpFileUploadUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const FileData = @import("org/allbinary/logic/io/file/FileData.zig").FileData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const FileItem = @import("org/apache/commons/fileupload/FileItem.zig").FileItem;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const DownloadableInventoryItemView = @import("views/admin/inventory/download/DownloadableInventoryItemView.zig").DownloadableInventoryItemView;
const Long = @import("java/lang/Long.zig").Long;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const UpdateFileValidationView = struct {
    const Self = @This();
    pub const java_name = "views.admin.inventory.download.UpdateFileValidationView";
    base: DownloadableInventoryItemView = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    // Implements ValidationComponentInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(DownloadableInventoryItemView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            const command: ?*String = Inheritance.cast(?*String, Inheritance.call(Inheritance.receiver(self, "getRequestHashMap").getRequestHashMap().?, "get", .{ GLOBALS2.ADMINCOMMAND }));
            if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ command }) or Inheritance.call(command.?, "compareTo", .{ self.commonStrings.?.UPDATE }) != 0) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Invalid AdminCommand="), command), self, self.commonStrings.?.IS_VALID });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            { // try
                const inventoryEntity: ?*InventoryEntity = Inheritance.upcast(?*InventoryEntity, Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance());
                Inheritance.fieldPointer(self, "itemInterface").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "itemInterface").*), Inheritance.call(inventoryEntity.?, "getItem", .{ Inheritance.fieldPointer(self, "id").* }));
            }
            // catch (MoneyException e):
//                 if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
//                     _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Existing Item With MoneyException"), self, self.commonStrings.?.IS_VALID, e });
//                 }
            if (Inheritance.fieldPointer(self, "itemInterface").* == null) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Item Does Not Exist"), self, self.commonStrings.?.IS_VALID });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Object.same(Inheritance.receiver(Inheritance.callStatic(BasicItemValidation, "create1", .{ Inheritance.fieldPointer(self, "itemInterface").* }), "isValid").isValid(), Boolean.FALSE)) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("BasicItem is not valid"), self, self.commonStrings.?.IS_VALID });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getStoreName").getStoreName() }));
            const fullCategory: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ URLGLOBALS.getWebappPath() }).?, "append", .{ Inheritance.receiver(storeFrontInterface.?, "getCurrentHostNamePath").getCurrentHostNamePath() }).?, "append", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "itemInterface").*.?, "getCategory").getCategory() }))));
            const categoryFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ fullCategory }));
            if (!categoryFile.?.isDirectory()) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Category Does Not Exist: "), fullCategory), self, self.commonStrings.?.IS_VALID });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const downloadableFileObject: ?Object = Inheritance.upcast(?Object, Inheritance.call(Inheritance.receiver(self, "getRequestHashMap").getRequestHashMap().?, "get", .{ DownloadItemData.FILE }));
            if (Inheritance.call(HttpFileUploadUtil.getInstance().?, "isValid", .{ downloadableFileObject })) {
                const fileItem: ?*FileItem = Inheritance.cast(?*FileItem, downloadableFileObject);
                const fileName: ?*String = Inheritance.upcast(?*String, fileItem.?.getName());
                const size: i64 = fileItem.?.getSize();
                _ = Inheritance.callStatic(HttpFileUploadUtil, "log", .{ fileItem });
                if (Object.same(Inheritance.call(self, "isValid", .{ fileName, size }), Boolean.FALSE)) {
                    return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                } else {
                    _ = Inheritance.call(self, "processFile", .{ fileItem });
                    _ = Inheritance.call(Inheritance.receiver(self, "getRequestHashMap").getRequestHashMap().?, "put", .{ DownloadItemData.SIZE, String.valueOf(size) });
                }
            } else {
                _ = Inheritance.call(Inheritance.receiver(self, "getRequestHashMap").getRequestHashMap().?, "remove", .{ DownloadItemData.FILE });
            }
            const licenseFileObject: ?Object = Inheritance.upcast(?Object, Inheritance.call(Inheritance.receiver(self, "getRequestHashMap").getRequestHashMap().?, "get", .{ DownloadItemData.LICENSE_FILE }));
            if (Inheritance.call(HttpFileUploadUtil.getInstance().?, "isValid", .{ licenseFileObject })) {
                const fileItem: ?*FileItem = Inheritance.cast(?*FileItem, licenseFileObject);
                const fileName: ?*String = Inheritance.upcast(?*String, fileItem.?.getName());
                const size: i64 = fileItem.?.getSize();
                _ = Inheritance.callStatic(HttpFileUploadUtil, "log", .{ fileItem });
                if (Object.same(Inheritance.call(self, "isValid", .{ fileName, size }), Boolean.FALSE)) {
                } else {
                    _ = Inheritance.call(self, "processFile", .{ fileItem });
                }
            } else {
                _ = Inheritance.call(Inheritance.receiver(self, "getRequestHashMap").getRequestHashMap().?, "remove", .{ DownloadItemData.LICENSE_FILE });
            }
            const extraFilesObject: ?Object = Inheritance.upcast(?Object, Inheritance.call(Inheritance.receiver(self, "getRequestHashMap").getRequestHashMap().?, "get", .{ DownloadItemData.EXTRA_FILES }));
            if (Inheritance.call(HttpFileUploadUtil.getInstance().?, "isValid", .{ extraFilesObject })) {
                const fileItem: ?*FileItem = Inheritance.cast(?*FileItem, extraFilesObject);
                const fileName: ?*String = Inheritance.upcast(?*String, fileItem.?.getName());
                const size: i64 = fileItem.?.getSize();
                _ = Inheritance.callStatic(HttpFileUploadUtil, "log", .{ fileItem });
                if (Object.same(Inheritance.call(self, "isValid", .{ fileName, size }), Boolean.FALSE)) {
                } else {
                    _ = Inheritance.call(self, "processFile", .{ fileItem });
                    _ = Inheritance.call(self, "unzip", .{ fileItem });
                }
            } else {
                _ = Inheritance.call(Inheritance.receiver(self, "getRequestHashMap").getRequestHashMap().?, "remove", .{ DownloadItemData.EXTRA_FILES });
            }
            const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiver(self, "getRequestHashMap").getRequestHashMap());
            _ = Inheritance.call(hashMap.?, "put", .{ Inheritance.fieldPointer(self, "basicItemData").*.?.ID, Inheritance.receiverOf(Inheritance.fieldPointer(self, "itemInterface").*.?, "getId").getId() });
            const licenseObject: ?Object = Inheritance.upcast(?Object, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.LICENSE_FILE }));
            if (licenseObject != null) {
                _ = Inheritance.call(hashMap.?, "put", .{ DownloadItemData.LICENSE_FILE, Inheritance.receiverOf((Inheritance.cast(?*FileItem, licenseObject)).?, "getName").getName() });
            } else {
                _ = Inheritance.call(hashMap.?, "put", .{ DownloadItemData.LICENSE_FILE, StringUtil.getInstance().?.EMPTY_STRING });
            }
            const fileObject: ?Object = Inheritance.upcast(?Object, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.FILE }));
            if (fileObject != null) {
                _ = Inheritance.call(hashMap.?, "put", .{ DownloadItemData.FILE, Inheritance.receiverOf((Inheritance.cast(?*FileItem, fileObject)).?, "getName").getName() });
            } else {
                _ = Inheritance.call(hashMap.?, "put", .{ DownloadItemData.FILE, StringUtil.getInstance().?.EMPTY_STRING });
            }
            Inheritance.fieldPointer(self, "downloadableItem").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "downloadableItem").*), Inheritance.callStatic(DownloadableItem, "create1", .{ hashMap }));
            const downloadableItemValidation: ?*DownloadableItemValidation = Inheritance.callStatic(DownloadableItemValidation, "create1", .{ Inheritance.fieldPointer(self, "downloadableItem").* });
            if (Object.same(Inheritance.receiver(downloadableItemValidation.?, "isValid").isValid(), Boolean.FALSE)) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("DownloadableItem is not valid"), self, self.commonStrings.?.IS_VALID });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Exception in validation"), self, self.commonStrings.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn toValidationInfoDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    pub fn toValidationInfoNode(self: *Self, document: ?*Document) ?*Node {
        _ = document;
        _ = self;
        return null;
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            const command: ?*String = Inheritance.cast(?*String, Inheritance.call(Inheritance.receiver(self, "getRequestHashMap").getRequestHashMap().?, "get", .{ GLOBALS2.ADMINCOMMAND }));
            if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ command }) or Inheritance.call(command.?, "compareTo", .{ self.commonStrings.?.UPDATE }) != 0) {
                return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
            }
            if (Inheritance.fieldPointer(self, "itemInterface").* == null) {
                const ITEM_NOT_FOUND: ?*String = String.literal("Item Does Not Exist");
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ ITEM_NOT_FOUND, self, String.literal("validationInfo()") });
                }
                return ITEM_NOT_FOUND;
            }
            const basicItemValidation: ?*BasicItemValidation = Inheritance.callStatic(BasicItemValidation, "create1", .{ Inheritance.fieldPointer(self, "itemInterface").* });
            if (Object.same(Inheritance.receiver(basicItemValidation.?, "isValid").isValid(), Boolean.FALSE)) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(basicItemValidation.?, "validationInfo").validationInfo() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br/>") });
            }
            const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getStoreName").getStoreName() }));
            const fullCategory: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ URLGLOBALS.getWebappPath() }).?, "append", .{ Inheritance.receiver(storeFrontInterface.?, "getCurrentHostNamePath").getCurrentHostNamePath() }).?, "append", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "itemInterface").*.?, "getCategory").getCategory() }))));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Category: "), fullCategory), self, String.literal("validationInfo()") });
            }
            const categoryFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ fullCategory }));
            if (!categoryFile.?.isDirectory()) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Category ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "itemInterface").*.?, "getCategory").getCategory() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" does not exist.") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br />") });
            }
            const downloadableFileObject: ?Object = Inheritance.upcast(?Object, Inheritance.call(Inheritance.receiver(self, "getRequestHashMap").getRequestHashMap().?, "get", .{ DownloadItemData.FILE }));
            if (Inheritance.call(HttpFileUploadUtil.getInstance().?, "isValid", .{ downloadableFileObject })) {
                const fileItem: ?*FileItem = Inheritance.cast(?*FileItem, downloadableFileObject);
                const fileName: ?*String = Inheritance.upcast(?*String, fileItem.?.getName());
                const size: i64 = fileItem.?.getSize();
                _ = Inheritance.call(self, "validationInfo", .{ stringBuffer, fileName, size });
            } else {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Download File Missing") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br/>") });
            }
            const licenseFileObject: ?Object = Inheritance.upcast(?Object, Inheritance.call(Inheritance.receiver(self, "getRequestHashMap").getRequestHashMap().?, "get", .{ DownloadItemData.LICENSE_FILE }));
            if (Inheritance.call(HttpFileUploadUtil.getInstance().?, "isValid", .{ licenseFileObject })) {
                const fileItem: ?*FileItem = Inheritance.cast(?*FileItem, licenseFileObject);
                const fileName: ?*String = Inheritance.upcast(?*String, fileItem.?.getName());
                const size: i64 = fileItem.?.getSize();
                _ = Inheritance.call(self, "validationInfo", .{ stringBuffer, fileName, size });
            } else {
            }
            const extraFilesObject: ?Object = Inheritance.upcast(?Object, Inheritance.call(Inheritance.receiver(self, "getRequestHashMap").getRequestHashMap().?, "get", .{ DownloadItemData.EXTRA_FILES }));
            if (Inheritance.call(HttpFileUploadUtil.getInstance().?, "isValid", .{ extraFilesObject })) {
                const fileItem: ?*FileItem = Inheritance.cast(?*FileItem, extraFilesObject);
                const fileName: ?*String = Inheritance.upcast(?*String, fileItem.?.getName());
                const size: i64 = fileItem.?.getSize();
                _ = Inheritance.call(self, "validationInfo", .{ stringBuffer, fileName, size });
            } else {
            }
            if (Inheritance.fieldPointer(self, "downloadableItem").* != null) {
                const downloadableItemValidation: ?*DownloadableItemValidation = Inheritance.callStatic(DownloadableItemValidation, "create1", .{ Inheritance.fieldPointer(self, "downloadableItem").* });
                if (Object.same(Inheritance.receiver(downloadableItemValidation.?, "isValid").isValid(), Boolean.FALSE)) {
                    const log: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(downloadableItemValidation.?, "validationInfo").validationInfo());
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ log, self, self.commonStrings.?.IS_VALID });
                    }
                    _ = Inheritance.call(stringBuffer.?, "append", .{ log });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br/>") });
                }
            }
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to generate validation error info"), self, String.literal("validationInfo()"), e });
//             }
//             return String.literal("Error Getting Validation Info");
    }
    

    // throws Exception
    pub fn isValid2(self: *Self, fileName: ?*String, size: i64) ?*Boolean {
        const fileData: ?*FileData = Inheritance.upcast(?*FileData, FileData.getInstance());
        if (size > fileData.?.MINDOWNLOADABLEFILESIZE) {
            if (size < fileData.?.MAXDOWNLOADABLEFILESIZE) {
                if (!Inheritance.call(StringValidationUtil.getInstance().?, "isValidRequired", .{ fileName, fileData.?.MINLEN, fileData.?.MAXLEN })) {
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                        const stringBuffer: ?*StringMaker = StringMaker.create();
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("File name is not valid: ") });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ fileName });
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.commonStrings.?.IS_VALID });
                    }
                    return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                } else {
                }
            } else {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("File Size To Large: ") });
                    _ = Inheritance.call(stringBuffer.?, "appendlong", .{ size });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(">") });
                    _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(fileData.?.MAXDOWNLOADABLEFILESIZE)) });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.commonStrings.?.IS_VALID });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
        } else {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("File Size To Small: ") });
                _ = Inheritance.call(stringBuffer.?, "appendlong", .{ size });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(">") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(fileData.?.MINDOWNLOADABLEFILESIZE)) });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.commonStrings.?.IS_VALID });
            }
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
    }
    

    pub fn validationInfo3(self: *Self, stringBuffer: ?*StringMaker, fileName: ?*String, size: i64) void {
        _ = self;
        const fileData: ?*FileData = Inheritance.upcast(?*FileData, FileData.getInstance());
        if (size > fileData.?.MINDOWNLOADABLEFILESIZE) {
            if (size < fileData.?.MAXDOWNLOADABLEFILESIZE) {
                if (!Inheritance.call(StringValidationUtil.getInstance().?, "isValidRequired", .{ fileName, fileData.?.MINLEN, fileData.?.MAXLEN })) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("File Name must be more than ") });
                    _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(fileData.?.MINLEN)) });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" and less than ") });
                    _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(fileData.?.MAXLEN)) });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" characters in length: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ fileName });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br/>") });
                } else {
                }
            } else {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("File Is Not The Right Size. ") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(fileData.?.MINDOWNLOADABLEFILESIZE)) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("< >") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(fileData.?.MAXDOWNLOADABLEFILESIZE)) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br/>") });
            }
        }
    }
};

