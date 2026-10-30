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
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const BasicItem = @import("org/allbinary/business/user/commerce/inventory/item/BasicItem.zig").BasicItem;
const BasicItemData = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemData.zig").BasicItemData;
const BasicItemView = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemView.zig").BasicItemView;
const ItemInterface = @import("org/allbinary/business/user/commerce/inventory/item/ItemInterface.zig").ItemInterface;
const DownloadableItem = @import("org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem.zig").DownloadableItem;
const DownloadableItemView = @import("org/allbinary/business/user/commerce/inventory/item/download/DownloadableItemView.zig").DownloadableItemView;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const HttpFileUploadUtil = @import("org/allbinary/logic/communication/http/file/upload/HttpFileUploadUtil.zig").HttpFileUploadUtil;
const HttpRequestUtil = @import("org/allbinary/logic/communication/http/request/HttpRequestUtil.zig").HttpRequestUtil;
const MultipartRequestParams = @import("org/allbinary/logic/communication/http/request/MultipartRequestParams.zig").MultipartRequestParams;
const RequestMapInterface = @import("org/allbinary/logic/communication/http/request/RequestMapInterface.zig").RequestMapInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const PathUtil = @import("org/allbinary/logic/io/path/PathUtil.zig").PathUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const MediaData = @import("org/allbinary/logic/visual/media/MediaData.zig").MediaData;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const FileItem = @import("org/apache/commons/fileupload/FileItem.zig").FileItem;
const HttpStoreComponentView = @import("views/business/context/modules/storefront/HttpStoreComponentView.zig").HttpStoreComponentView;
const InventoryUploadMediaUtil = @import("views/admin/inventory/InventoryUploadMediaUtil.zig").InventoryUploadMediaUtil;

pub const InventoryItemView = struct {
    const Self = @This();
    pub const java_name = "views.admin.inventory.InventoryItemView";
    base: HttpStoreComponentView = undefined,
    logUtil: ?*LogUtil = null,
    basicItemData: ?*BasicItemData = null,
    request: ?*HttpServletRequest = null,
    imageFileName: ?*String = null,
    mediaData: ?*MediaData = null,
    itemInterface: ?*ItemInterface = null,
    downloadableItemVector: ?*BasicArrayList = null,
    requestHashMap: ?*HashMap = null,
    // Implements RequestMapInterface
    pub var TYPE_ID: i32 = 10;

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.basicItemData = Inheritance.upcast(?*BasicItemData, BasicItemData.getInstance());
        
        this.imageFileName = null;
        this.mediaData = null;
        this.itemInterface = null;
        this.downloadableItemVector = null;
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
        return InventoryItemView.TYPE_ID;
    }
    

    // throws Exception
    pub fn getFormData(self: *Self) void {
        _ = Inheritance.call(self, "setRequestHashMap", .{ Inheritance.receiver(Inheritance.callStatic(MultipartRequestParams, "create1", .{ self.request }), "toHashMap").toHashMap() });
        const imageFileItemObject: ?Object = Inheritance.upcast(?Object, Inheritance.call(self.getRequestHashMap().?, "get", .{ self.basicItemData.?.IMAGE }));
        if (Inheritance.call(HttpFileUploadUtil.getInstance().?, "isValid", .{ imageFileItemObject })) {
            const fileItem: ?*FileItem = Inheritance.cast(?*FileItem, imageFileItemObject);
            if (fileItem != null and fileItem.?.getSize() > 1) {
                self.imageFileName = Inheritance.upcast(@TypeOf(self.imageFileName), Inheritance.call(HttpRequestUtil.getInstance().?, "generateFileName", .{ fileItem.?.getName() }));
                const pathData: ?*AbPathData = Inheritance.upcast(?*AbPathData, AbPathData.getInstance());
                const pathUtil: ?*PathUtil = Inheritance.upcast(?*PathUtil, PathUtil.getInstance());
                self.mediaData = Inheritance.upcast(@TypeOf(self.mediaData), Inheritance.callStatic(MediaData, "get", .{ Inheritance.call(pathData.?, "getExtension", .{ self.imageFileName }) }));
                self.imageFileName = Inheritance.upcast(@TypeOf(self.imageFileName), Inheritance.call(pathUtil.?, "getWithoutExtension", .{ self.imageFileName }));
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Uploaded File Data: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ self.imageFileName });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Extension: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ self.mediaData.?.getName() });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("getFormData()") });
                }
            }
        }
        self.itemInterface = Inheritance.cast(?*ItemInterface, Inheritance.callStatic(BasicItem, "create1", .{ self.getRequestHashMap() }));
    }
    

    pub fn addDomNodeInterfaces(self: *Self) void {
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        var downloadableItem: ?*DownloadableItem = null;
        const size: i32 = self.downloadableItemVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            downloadableItem = Inheritance.cast(?*DownloadableItem, Inheritance.call(self.downloadableItemVector.?, "get", .{ index }));
            _ = Inheritance.call(vector.?, "add", .{ Inheritance.callStatic(DownloadableItemView, "create1", .{ downloadableItem }) });
            }
        }
        _ = Inheritance.call(self, "addDomNodeInterface", .{ Inheritance.callStatic(BasicItemView, "create2", .{ self.itemInterface, vector }) });
    }
    

    pub fn getItemInterface(self: *Self) ?*ItemInterface {
        return self.itemInterface;
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
    pub fn processImageFiles(self: *Self) void {
        const set: ?*Set = Inheritance.upcast(?*Set, Inheritance.receiverOf(self.getRequestHashMap().?, "keySet").keySet());
        const fieldNameArray: []?Object = set.?.toArray();
        const size: i32 = @as(i32, @intCast(fieldNameArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const fieldName: ?*String = Inheritance.cast(?*String, fieldNameArray[@intCast(index)]);
            if (Inheritance.call(fieldName.?, "compareTo", .{ self.basicItemData.?.IMAGE }) == 0) {
                const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getStoreName").getStoreName() }));
                const inventoryUploadMediaUtil: ?*InventoryUploadMediaUtil = Inheritance.callStatic(InventoryUploadMediaUtil, "create2", .{ storeFrontInterface, self.itemInterface });
                const fileItem: ?*FileItem = Inheritance.cast(?*FileItem, Inheritance.call(self.getRequestHashMap().?, "get", .{ self.basicItemData.?.IMAGE }));
                self.itemInterface = Inheritance.upcast(@TypeOf(self.itemInterface), Inheritance.call(inventoryUploadMediaUtil.?, "saveFiles", .{ fileItem.?.get(), self.imageFileName, self.mediaData }));
            }
            }
        }
    }
    

    pub fn setRequestHashMap(self: *Self, requestHashMap: ?*HashMap) void {
        self.requestHashMap = requestHashMap;
    }
    

    pub fn getRequestHashMap(self: *Self) ?*HashMap {
        return self.requestHashMap;
    }
};

