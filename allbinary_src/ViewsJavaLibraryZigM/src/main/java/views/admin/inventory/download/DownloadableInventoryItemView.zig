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
// const ByteArrayInputStream = @import("java/io/ByteArrayInputStream.zig").ByteArrayInputStream;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const BasicItemData = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemData.zig").BasicItemData;
const BasicItemView = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemView.zig").BasicItemView;
const ItemInterface = @import("org/allbinary/business/user/commerce/inventory/item/ItemInterface.zig").ItemInterface;
const DownloadableItem = @import("org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem.zig").DownloadableItem;
const DownloadableItemView = @import("org/allbinary/business/user/commerce/inventory/item/download/DownloadableItemView.zig").DownloadableItemView;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const MultipartRequestParams = @import("org/allbinary/logic/communication/http/request/MultipartRequestParams.zig").MultipartRequestParams;
const RequestMapInterface = @import("org/allbinary/logic/communication/http/request/RequestMapInterface.zig").RequestMapInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const FilePathData = @import("org/allbinary/logic/io/file/FilePathData.zig").FilePathData;
const FileUtil = @import("org/allbinary/logic/io/file/FileUtil.zig").FileUtil;
const ZipFileUtil = @import("org/allbinary/logic/io/file/zip/ZipFileUtil.zig").ZipFileUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const FileItem = @import("org/apache/commons/fileupload/FileItem.zig").FileItem;
const HttpStoreComponentView = @import("views/business/context/modules/storefront/HttpStoreComponentView.zig").HttpStoreComponentView;

pub const DownloadableInventoryItemView = struct {
    const Self = @This();
    pub const java_name = "views.admin.inventory.download.DownloadableInventoryItemView";
    base: HttpStoreComponentView = undefined,
    logUtil: ?*LogUtil = null,
    basicItemData: ?*BasicItemData = null,
    request: ?*HttpServletRequest = null,
    id: ?*String = null,
    itemInterface: ?*ItemInterface = null,
    downloadableItem: ?*DownloadableItem = null,
    requestHashMap: ?*HashMap = null,
    // Implements RequestMapInterface
    pub var TYPE_ID: i32 = 11;

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.basicItemData = Inheritance.upcast(?*BasicItemData, BasicItemData.getInstance());
        
        this.id = null;
        this.itemInterface = null;
        this.downloadableItem = null;
        this.requestHashMap = null;
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HttpStoreComponentView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        this.request = Inheritance.cast(?*HttpServletRequest, Inheritance.receiverOf(Inheritance.receiver(this, "getPageContext").getPageContext().?, "getRequest").getRequest());
        _ = this.getFormData();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create2(transformInfoInterface: ?*TransformInfoInterface, empty: ?*String) *Self {
        _ = empty;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HttpStoreComponentView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        this.request = Inheritance.cast(?*HttpServletRequest, Inheritance.receiverOf(Inheritance.receiver(this, "getPageContext").getPageContext().?, "getRequest").getRequest());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getTypeId(self: *Self) i32 {
        _ = self;
        return DownloadableInventoryItemView.TYPE_ID;
    }
    

    // throws Exception
    pub fn getFormData(self: *Self) void {
        _ = Inheritance.call(self, "setRequestHashMap", .{ Inheritance.receiver(Inheritance.callStatic(MultipartRequestParams, "create1", .{ self.request }), "toHashMap").toHashMap() });
        self.id = Inheritance.cast(?*String, Inheritance.call(self.getRequestHashMap().?, "get", .{ self.basicItemData.?.ID }));
    }
    

    pub fn addDomNodeInterfaces(self: *Self) void {
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        if (self.downloadableItem != null) {
            _ = Inheritance.call(vector.?, "add", .{ Inheritance.callStatic(DownloadableItemView, "create1", .{ self.downloadableItem }) });
        }
        _ = Inheritance.call(self, "addDomNodeInterface", .{ Inheritance.callStatic(BasicItemView, "create2", .{ self.itemInterface, vector }) });
    }
    

    // throws Exception
    pub fn view(self: *Self) ?*String {
        { // try
            _ = self.addDomNodeInterfaces();
            return Inheritance.upcast(?*String, self.base.view());
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("view()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn processFile(self: *Self, fileItem: ?*FileItem) void {
        const fileName: ?*String = Inheritance.upcast(?*String, fileItem.?.getName());
        const fullPath: ?*String = Inheritance.upcast(?*String, self.getItemFilePath());
        const itemResourceFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ fullPath }));
        _ = itemResourceFile.?.mkdir();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ fullPath });
        _ = Inheritance.call(stringBuffer.?, "append", .{ fileName });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("FileName: "), fileName), self, String.literal("processFile()") });
        const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ Object.toString(Object.of(stringBuffer)) }));
        _ = Inheritance.call(self.logUtil.?, "putF", .{ file.?.getPath(), self, String.literal("processFiles()") });
        _ = file.?.createNewFile();
        const byteArray: []i8 = fileItem.?.get();
        _ = Inheritance.call(FileUtil.getInstance().?, "write", .{ Inheritance.callStatic(ByteArrayInputStream, "create1", .{ byteArray }), file });
    }
    

    // throws Exception
    pub fn unzip(self: *Self, fileItem: ?*FileItem) void {
        const fileName: ?*String = Inheritance.upcast(?*String, fileItem.?.getName());
        const fullPath: ?*String = Inheritance.upcast(?*String, self.getItemFilePath());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ fullPath });
        _ = Inheritance.call(stringBuffer.?, "append", .{ fileName });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("FileName: "), fileName), self, String.literal("unzip()") });
        const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ Object.toString(Object.of(stringBuffer)) }));
        _ = Inheritance.call(self.logUtil.?, "putF", .{ file.?.getPath(), self, String.literal("unzip()") });
        _ = Inheritance.call(ZipFileUtil.getInstance().?, "unzip", .{ fullPath, file, fileName });
    }
    

    pub fn getItemFilePath(self: *Self) ?*String {
        const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getStoreName").getStoreName() }));
        const filePathData: ?*FilePathData = Inheritance.upcast(?*FilePathData, FilePathData.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getWebappPath() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(storeFrontInterface.?, "getCurrentHostNamePath").getCurrentHostNamePath() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self.itemInterface.?, "getCategory").getCategory() });
        _ = Inheritance.call(stringBuffer.?, "appendchar", .{ filePathData.?.SEPARATORCHAR });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self.itemInterface.?, "getId").getId() });
        _ = Inheritance.call(stringBuffer.?, "appendchar", .{ filePathData.?.SEPARATORCHAR });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.downloadableItem.?.getId() });
        _ = Inheritance.call(stringBuffer.?, "appendchar", .{ filePathData.?.SEPARATORCHAR });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn setRequestHashMap(self: *Self, requestHashMap: ?*HashMap) void {
        self.requestHashMap = requestHashMap;
    }
    

    pub fn getRequestHashMap(self: *Self) ?*HashMap {
        return self.requestHashMap;
    }
    

    pub fn getDownloadableItem(self: *Self) ?*DownloadableItem {
        return self.downloadableItem;
    }
};

