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
// package views.generic.inventory

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicItemView = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemView.zig").BasicItemView;
const ItemInterface = @import("org/allbinary/business/user/commerce/inventory/item/ItemInterface.zig").ItemInterface;
const InventoryEntity = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity.zig").InventoryEntity;
const InventoryEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory.zig").InventoryEntityFactory;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SearchRequest = @import("org/allbinary/logic/control/search/SearchRequest.zig").SearchRequest;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const StoreTransformer = @import("org/allbinary/logic/visual/transform/StoreTransformer.zig").StoreTransformer;
const TransformDocumentInterface = @import("org/allbinary/logic/visual/transform/data/TransformDocumentInterface.zig").TransformDocumentInterface;
const TransformStoreDocumentFactory = @import("org/allbinary/logic/visual/transform/data/TransformStoreDocumentFactory.zig").TransformStoreDocumentFactory;
const TransformInfoHttpSearch = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpSearch.zig").TransformInfoHttpSearch;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const InventorySearchProductUtil = struct {
    const Self = @This();
    pub const java_name = "views.generic.inventory.InventorySearchProductUtil";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    ITEM_NOT_FOUND: ?*String = null,
    var instance: ?*InventorySearchProductUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = InventorySearchProductUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.ITEM_NOT_FOUND = String.literal("Item Not Found.");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*InventorySearchProductUtil {
        return Inheritance.upcast(?*InventorySearchProductUtil, InventorySearchProductUtil.instance);
    }
    

    // throws Exception
    pub fn getProduct(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, searchRequest: ?*SearchRequest, product: ?*String) ?*String {
        { // try
            const inventoryEntityInterface: ?*InventoryEntity = Inheritance.upcast(?*InventoryEntity, Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance());
            const itemInterface: ?*ItemInterface = Inheritance.upcast(?*ItemInterface, Inheritance.call(inventoryEntityInterface.?, "getItem", .{ product }));
            if (itemInterface != null) {
                const viewDocumentInterface: ?*TransformDocumentInterface = Inheritance.upcast(?*TransformDocumentInterface, Inheritance.callStatic(TransformStoreDocumentFactory, "getInstance", .{ searchRequest }));
                _ = Inheritance.call(viewDocumentInterface.?.getBaseNode().?, "appendChild", .{ Inheritance.call(Inheritance.callStatic(BasicItemView, "create2", .{ itemInterface, BasicArrayListD.create() }), "toXmlNode", .{ viewDocumentInterface.?.getDoc() }) });
                const success: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(XmlDocumentHelper, "toString", .{ viewDocumentInterface.?.getDoc() }));
                const outputStr: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(StoreTransformer, "create2", .{ abeClientInformation, Inheritance.cast(?*TransformInfoInterface, Inheritance.callStatic(TransformInfoHttpSearch, "create1", .{ searchRequest })) }), "translate", .{ success }));
                return outputStr;
            } else {
                return self.ITEM_NOT_FOUND;
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PRODUCTSEARCHLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.FAILURE, self, String.literal("getProduct"), e });
//             }
//             std.debug.panic("{any}", .{exception: { _ = String.literal("Failed to getProduct"); break :exception error.Exception; }});
    }
};

