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
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const BasicItemData = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemData.zig").BasicItemData;
const BasicItemValidation = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemValidation.zig").BasicItemValidation;
const MoneyException = @import("org/allbinary/business/user/commerce/money/MoneyException.zig").MoneyException;
const InventoryEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory.zig").InventoryEntityFactory;
const GLOBALS2 = @import("org/allbinary/globals/GLOBALS2.zig").GLOBALS2;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const HttpFileUploadUtil = @import("org/allbinary/logic/communication/http/file/upload/HttpFileUploadUtil.zig").HttpFileUploadUtil;
const UploadMediaSingleton = @import("org/allbinary/logic/communication/http/file/upload/media/UploadMediaSingleton.zig").UploadMediaSingleton;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const FileData = @import("org/allbinary/logic/io/file/FileData.zig").FileData;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const FileItem = @import("org/apache/commons/fileupload/FileItem.zig").FileItem;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const InventoryItemView = @import("views/admin/inventory/InventoryItemView.zig").InventoryItemView;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const AddFileValidationView = struct {
    const Self = @This();
    pub const java_name = "views.admin.inventory.AddFileValidationView";
    base: InventoryItemView = undefined,
    logUtil: ?*LogUtil = null,
    basicItemData: ?*BasicItemData = null,
    // Implements ValidationComponentInterface
    const ADDPRODUCT: ?*String = String.literal("Add Product");
    var NEXTSTEP: ?*String = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NEXTSTEP = Inheritance.upcast(?*String, String.plus(CommonLabels.getInstance().?.NEXT, String.literal(" Step")));
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.basicItemData = Inheritance.upcast(?*BasicItemData, BasicItemData.getInstance());
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(InventoryItemView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            const command: ?*String = Inheritance.cast(?*String, Inheritance.call(Inheritance.receiver(self, "getRequestHashMap").getRequestHashMap().?, "get", .{ GLOBALS2.ADMINCOMMAND }));
            if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ command }) or (Inheritance.call(command.?, "compareTo", .{ AddFileValidationView.ADDPRODUCT }) != 0 and Inheritance.call(command.?, "compareTo", .{ AddFileValidationView.NEXTSTEP }) != 0)) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Invalid AdminCommand: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ command });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" must be: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ AddFileValidationView.ADDPRODUCT });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" or ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ AddFileValidationView.NEXTSTEP });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const basicItemValidation: ?*BasicItemValidation = Inheritance.callStatic(BasicItemValidation, "create1", .{ Inheritance.fieldPointer(self, "itemInterface").* });
            if (Object.same(Inheritance.receiver(basicItemValidation.?, "isValid").isValid(), Boolean.FALSE)) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.receiver(basicItemValidation.?, "validationInfo").validationInfo(), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getStoreName").getStoreName() }));
            _ = Inheritance.call(Inheritance.fieldPointer(self, "itemInterface").*.?, "setCategory", .{ Inheritance.receiver(storeFrontInterface.?, "getCategoryPath").getCategoryPath() + Inheritance.receiverOf(Inheritance.fieldPointer(self, "itemInterface").*.?, "getCategory").getCategory() });
            const fullCategory: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ URLGLOBALS.getWebappPath() }).?, "append", .{ Inheritance.receiver(storeFrontInterface.?, "getCurrentHostNamePath").getCurrentHostNamePath() }).?, "append", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "itemInterface").*.?, "getCategory").getCategory() }))));
            const categoryFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ fullCategory }));
            if (!categoryFile.?.isDirectory()) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Category Does Not Exist: "), fullCategory), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.call(Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance().?, "getItem", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "itemInterface").*.?, "getId").getId() }) != null) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Item Already Exists"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const imageFileItemObject: ?Object = Inheritance.upcast(?Object, Inheritance.call(Inheritance.receiver(self, "getRequestHashMap").getRequestHashMap().?, "get", .{ self.basicItemData.?.IMAGE }));
            if (Inheritance.call(HttpFileUploadUtil.getInstance().?, "isValid", .{ imageFileItemObject })) {
                const fileItem: ?*FileItem = Inheritance.cast(?*FileItem, imageFileItemObject);
                const fileName: ?*String = Inheritance.upcast(?*String, fileItem.?.getName());
                const size: i64 = fileItem.?.getSize();
                _ = Inheritance.callStatic(HttpFileUploadUtil, "log", .{ fileItem });
                if (Object.same(Inheritance.call(self, "isValid", .{ fileName, size }), Boolean.FALSE)) {
                    return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                }
            }
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Exception in validation"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID, e });
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
            if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ command }) or (Inheritance.call(command.?, "compareTo", .{ AddFileValidationView.ADDPRODUCT }) != 0 and Inheritance.call(command.?, "compareTo", .{ AddFileValidationView.NEXTSTEP }) != 0)) {
                return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
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
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" does not exist.<br />") });
            }
            { // try
                if (Inheritance.call(Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance().?, "getItem", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "itemInterface").*.?, "getId").getId() }) != null) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Id is already in use. Refresh the page for a valid id.<br/>") });
                }
            }
            // catch (MoneyException e):
//                 if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
//                     _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Existing Item With MoneyException"), self, String.literal("validationInfo()") });
//                 }
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(Inheritance.receiver(self, "getRequestHashMap").getRequestHashMap().?, "get", .{ self.basicItemData.?.IMAGE }));
            if (Inheritance.call(HttpFileUploadUtil.getInstance().?, "isValid", .{ anyType })) {
                const fileItem: ?*FileItem = Inheritance.cast(?*FileItem, anyType);
                const fileName: ?*String = Inheritance.upcast(?*String, fileItem.?.getName());
                const fileItemFieldName: ?*String = Inheritance.upcast(?*String, fileItem.?.getFieldName());
                const size: i64 = fileItem.?.getSize();
                _ = Inheritance.call(self, "validationInfo", .{ stringBuffer, fileName, fileItemFieldName, size });
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
        if (size > fileData.?.MINIMAGEFILESIZE) {
            if (size < fileData.?.MAXIMAGEFILESIZE) {
                if (!Inheritance.call(StringValidationUtil.getInstance().?, "isValidRequired", .{ fileName, fileData.?.MINLEN, fileData.?.MAXLEN })) {
                    return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                } else {
                    const pathData: ?*AbPathData = Inheritance.upcast(?*AbPathData, AbPathData.getInstance());
                    const extension: ?*String = Inheritance.upcast(?*String, Inheritance.call(pathData.?, "getExtension", .{ fileName }));
                    const uploadMedia: ?*UploadMediaSingleton = Inheritance.upcast(?*UploadMediaSingleton, UploadMediaSingleton.getInstance());
                    if (!Inheritance.call(uploadMedia.?, "isWriterSupported", .{ extension }) and !Inheritance.call(uploadMedia.?, "isReaderSupported", .{ extension })) {
                        return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                    }
                }
            } else {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("File Size To Large: ") });
                    _ = Inheritance.call(stringBuffer.?, "appendlong", .{ size });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(">") });
                    _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(fileData.?.MAXIMAGEFILESIZE)) });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            _ = Inheritance.receiver(self, "processImageFiles").processImageFiles();
        } else {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("File Size To Small: ") });
                _ = Inheritance.call(stringBuffer.?, "appendlong", .{ size });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(">") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(fileData.?.MINIMAGEFILESIZE)) });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
            }
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
    }
    

    pub fn validationInfo4(self: *Self, stringBuffer: ?*StringMaker, fileName: ?*String, fileItemFieldName: ?*String, size: i64) void {
        const fileData: ?*FileData = Inheritance.upcast(?*FileData, FileData.getInstance());
        if (size > fileData.?.MINIMAGEFILESIZE) {
            if (Inheritance.call(fileItemFieldName.?, "compareTo", .{ self.basicItemData.?.IMAGE }) == 0) {
                if (size < fileData.?.MAXIMAGEFILESIZE) {
                    if (!Inheritance.call(StringValidationUtil.getInstance().?, "isValidRequired", .{ fileName, fileData.?.MINLEN, fileData.?.MAXLEN })) {
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("FileName must be >") });
                        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(fileData.?.MINLEN)) });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" and <") });
                        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(fileData.?.MAXLEN)) });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br/>") });
                    } else {
                        const pathData: ?*AbPathData = Inheritance.upcast(?*AbPathData, AbPathData.getInstance());
                        const extension: ?*String = Inheritance.upcast(?*String, Inheritance.call(pathData.?, "getExtension", .{ fileName }));
                        const uploadMedia: ?*UploadMediaSingleton = Inheritance.upcast(?*UploadMediaSingleton, UploadMediaSingleton.getInstance());
                        if (!Inheritance.call(uploadMedia.?, "isWriterSupported", .{ extension }) and !Inheritance.call(uploadMedia.?, "isReaderSupported", .{ extension })) {
                            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Image type: ") });
                            _ = Inheritance.call(stringBuffer.?, "append", .{ extension });
                            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" not supported.<br />") });
                        }
                    }
                } else {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Image File Is To Large. ") });
                    _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(fileData.?.MINIMAGEFILESIZE)) });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" < > ") });
                    _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(fileData.?.MAXIMAGEFILESIZE)) });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br/>") });
                }
            }
        } else {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Image File Is To Small. ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(fileData.?.MINIMAGEFILESIZE)) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" < > ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(fileData.?.MAXIMAGEFILESIZE)) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br/>") });
        }
    }
};

