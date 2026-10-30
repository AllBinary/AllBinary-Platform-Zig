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
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const FileItem = @import("org/apache/commons/fileupload/FileItem.zig").FileItem;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const InventoryItemView = @import("views/admin/inventory/InventoryItemView.zig").InventoryItemView;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const UpdateFileValidationView = struct {
    const Self = @This();
    pub const java_name = "views.admin.inventory.UpdateFileValidationView";
    base: InventoryItemView = undefined,
    logUtil: ?*LogUtil = null,
    // Implements ValidationComponentInterface
    var UPDATEPRODUCT: ?*String = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        UPDATEPRODUCT = Inheritance.upcast(?*String, CommonStrings.getInstance().?.UPDATE);
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
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
            if (command == null or Inheritance.call(command.?, "compareTo", .{ UpdateFileValidationView.UPDATEPRODUCT }) != 0) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Invalid AdminCommand="), command), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Object.same(Inheritance.receiver(Inheritance.callStatic(BasicItemValidation, "create1", .{ Inheritance.fieldPointer(self, "itemInterface").* }), "isValid").isValid(), Boolean.FALSE)) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("BasicItem is not valid"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getStoreName").getStoreName() }));
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getWebappPath() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(storeFrontInterface.?, "getCurrentHostNamePath").getCurrentHostNamePath() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "itemInterface").*.?, "getCategory").getCategory() });
            const fullCategory: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            const categoryFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ fullCategory }));
            if (!categoryFile.?.isDirectory()) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Category Does Not Exist: "), fullCategory), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const inventoryEntity: ?*InventoryEntity = Inheritance.upcast(?*InventoryEntity, Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance());
            if (Inheritance.call(inventoryEntity.?, "getItem", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "itemInterface").*.?, "getId").getId() }) == null) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(Inheritance.receiver(self, "getRequestHashMap").getRequestHashMap().?, "get", .{ Inheritance.fieldPointer(self, "basicItemData").*.?.IMAGE }));
            if (Inheritance.call(HttpFileUploadUtil.getInstance().?, "isValid", .{ anyType })) {
                const fileItem: ?*FileItem = Inheritance.cast(?*FileItem, anyType);
                const size: i64 = fileItem.?.getSize();
                const fileName: ?*String = Inheritance.upcast(?*String, fileItem.?.getName());
                _ = Inheritance.callStatic(HttpFileUploadUtil, "log", .{ fileItem });
                if (Object.same(Inheritance.call(self, "isValid", .{ fileName, size }), Boolean.FALSE)) {
                    return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                }
            }
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
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
    

    // throws Exception
    pub fn validationInfo(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const command: ?*String = Inheritance.cast(?*String, Inheritance.call(Inheritance.receiver(self, "getRequestHashMap").getRequestHashMap().?, "get", .{ GLOBALS2.ADMINCOMMAND }));
        if (command == null or Inheritance.call(command.?, "compareTo", .{ UpdateFileValidationView.UPDATEPRODUCT }) != 0) {
            return Inheritance.upcast(?*String, CommonSeps.getInstance().?.SPACE);
        }
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(Inheritance.callStatic(BasicItemValidation, "create1", .{ Inheritance.fieldPointer(self, "itemInterface").* }), "validationInfo").validationInfo() });
        const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getStoreName").getStoreName() }));
        const fullCategory: ?*String = Inheritance.upcast(?*String, Inheritance.cast(?*String, URLGLOBALS.getWebappPath()) + Inheritance.receiver(storeFrontInterface.?, "getCurrentHostNamePath").getCurrentHostNamePath() + Inheritance.receiverOf(Inheritance.fieldPointer(self, "itemInterface").*.?, "getCategory").getCategory());
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Category: "), fullCategory), self, String.literal("validationInfo()") });
        }
        { // try
            if (Inheritance.call(Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance().?, "getItem", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "itemInterface").*.?, "getId").getId() }) == null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Item does not exist.<br>") });
            }
        }
        // catch (MoneyException e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
//                 _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Existing Item With MoneyException"), self, String.literal("validationInfo()") });
//             }
        const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(Inheritance.receiver(self, "getRequestHashMap").getRequestHashMap().?, "get", .{ Inheritance.fieldPointer(self, "basicItemData").*.?.IMAGE }));
        if (Inheritance.call(HttpFileUploadUtil.getInstance().?, "isValid", .{ anyType })) {
            const fileItem: ?*FileItem = Inheritance.cast(?*FileItem, anyType);
            const size: i64 = fileItem.?.getSize();
            const fileName: ?*String = Inheritance.upcast(?*String, fileItem.?.getName());
            const fileItemFieldName: ?*String = Inheritance.upcast(?*String, fileItem.?.getFieldName());
            _ = Inheritance.call(self, "validationInfo", .{ stringBuffer, fileName, fileItemFieldName, size });
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    // throws Exception
    pub fn isValid2(self: *Self, fileName: ?*String, size: i64) ?*Boolean {
        const fileData: ?*FileData = Inheritance.upcast(?*FileData, FileData.getInstance());
        if (size > fileData.?.MINIMAGEFILESIZE) {
            if (size < fileData.?.MAXIMAGEFILESIZE) {
                if (!Inheritance.call(StringValidationUtil.getInstance().?, "isValidRequired", .{ fileName, fileData.?.MINLEN, fileData.?.MAXLEN })) {
                    return Inheritance.upcast(?*Boolean, Boolean.FALSE);
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
        }
        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
    }
    

    pub fn validationInfo4(self: *Self, stringBuffer: ?*StringMaker, fileName: ?*String, fileItemFieldName: ?*String, size: i64) void {
        _ = self;
        const fileData: ?*FileData = Inheritance.upcast(?*FileData, FileData.getInstance());
        if (size > fileData.?.MINIMAGEFILESIZE) {
            if (Inheritance.call(fileItemFieldName.?, "compareTo", .{ Inheritance.fieldPointer(self, "basicItemData").*.?.IMAGE }) == 0) {
                if (size < fileData.?.MAXIMAGEFILESIZE) {
                    if (!Inheritance.call(StringValidationUtil.getInstance().?, "isValidRequired", .{ fileName, fileData.?.MINLEN, fileData.?.MAXLEN })) {
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("FileName must be >") });
                        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(fileData.?.MINLEN)) });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("and <") });
                        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(fileData.?.MAXLEN)) });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br />") });
                    }
                } else {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Image File Is Not The Right Size. ") });
                    _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(fileData.?.MINIMAGEFILESIZE)) });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("< > ") });
                    _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(fileData.?.MAXIMAGEFILESIZE)) });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br />") });
                }
            }
        }
    }
};

