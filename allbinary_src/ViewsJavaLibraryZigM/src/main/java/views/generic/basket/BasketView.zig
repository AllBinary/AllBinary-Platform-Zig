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
// package views.generic.basket

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
const BasketData = @import("org/allbinary/business/user/commerce/inventory/basket/BasketData.zig").BasketData;
const BasketInterface = @import("org/allbinary/business/user/commerce/inventory/basket/BasketInterface.zig").BasketInterface;
const BasicItemView = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemView.zig").BasicItemView;
const ItemInterface = @import("org/allbinary/business/user/commerce/inventory/item/ItemInterface.zig").ItemInterface;
const Money = @import("org/allbinary/business/user/commerce/money/Money.zig").Money;
const InventoryEntity = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity.zig").InventoryEntity;
const InventoryEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory.zig").InventoryEntityFactory;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SearchData = @import("org/allbinary/logic/control/search/SearchData.zig").SearchData;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const HttpStoreComponentView = @import("views/business/context/modules/storefront/HttpStoreComponentView.zig").HttpStoreComponentView;

pub const BasketView = struct {
    const Self = @This();
    pub const java_name = "views.generic.basket.BasketView";
    base: HttpStoreComponentView = undefined,
    logUtil: ?*LogUtil = null,
    request: ?*HttpServletRequest = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HttpStoreComponentView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        this.request = Inheritance.cast(?*HttpServletRequest, Inheritance.receiverOf(Inheritance.receiver(this, "getPageContext").getPageContext().?, "getRequest").getRequest());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        { // try
            const inventoryEntity: ?*InventoryEntity = Inheritance.upcast(?*InventoryEntity, Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance());
            const basketInterface: ?*BasketInterface = Inheritance.upcast(?*BasketInterface, Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getOrder").getOrder().?, "getBasket").getBasket());
            const basketNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ BasketData.BASKET }));
            const itemsAndNumberInBasket: ?*HashMap = Inheritance.upcast(?*HashMap, basketInterface.?.getItems());
            var numberOfResults: i32 = 1;
            const items: ?*Set = Inheritance.upcast(?*Set, itemsAndNumberInBasket.?.keySet());
            const productArray: []?Object = items.?.toArray();
            const size: i32 = @as(i32, @intCast(productArray.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const product: ?*String = Inheritance.callStatic(String, "create1", .{ Inheritance.cast(?*String, productArray[@intCast(index)]) });
                const itemInterface: ?*ItemInterface = Inheritance.upcast(?*ItemInterface, Inheritance.call(inventoryEntity.?, "getItem", .{ product }));
                if (itemInterface != null) {
                    const basicItemView: ?*BasicItemView = Inheritance.callStatic(BasicItemView, "create2", .{ itemInterface, BasicArrayListD.create() });
                    const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(basicItemView.?, "toXmlNode", .{ document }));
                    const numberInBasket: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(basketInterface.?, "getNumberOf", .{ product }))));
                    _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, BasketData.ITEMTOTALINBASKET, numberInBasket }) });
                    const itemPrice: ?*Money = Inheritance.upcast(?*Money, Inheritance.receiver(itemInterface.?, "getPrice").getPrice());
                    const itemTotal: ?*Money = Inheritance.callStatic(Money, "create1", .{ itemPrice });
                    _ = Inheritance.call(itemTotal.?, "multiply", .{ Inheritance.receiverOf(Inheritance.call(basketInterface.?, "getNumberOf", .{ product }).?, "intValue").intValue() });
                    _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, BasketData.ITEMTOTAL, Object.toString(Object.of(itemTotal)) }) });
                    _ = Inheritance.call(basketNode.?, "appendChild", .{ node });
                } else {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Product Failed: "), product), self, String.literal("toXmlNode") });
                }
                numberOfResults += 1;
                }
            }
            const totalNumberNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ SearchData.TOTAL_NUMBER_ITEMS }));
            const totalNumberTextNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createTextNode", .{ Object.toString(Object.of(basketInterface.?.getNumberOfItems())) }));
            _ = Inheritance.call(totalNumberNode.?, "appendChild", .{ totalNumberTextNode });
            const totalWeightNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ BasketData.TOTALWEIGHT }));
            const totalWeightTextNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createTextNode", .{ Object.toString(Object.of(basketInterface.?.getTotalWeight())) }));
            _ = Inheritance.call(totalWeightNode.?, "appendChild", .{ totalWeightTextNode });
            const subTotalNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ BasketData.SUBTOTAL }));
            const subTotalTextNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createTextNode", .{ Object.toString(Object.of(basketInterface.?.getSubTotal())) }));
            _ = Inheritance.call(subTotalNode.?, "appendChild", .{ subTotalTextNode });
            _ = Inheritance.call(basketNode.?, "appendChild", .{ totalNumberNode });
            _ = Inheritance.call(basketNode.?, "appendChild", .{ totalWeightNode });
            _ = Inheritance.call(basketNode.?, "appendChild", .{ subTotalNode });
            return basketNode;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.XSLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("toXmlNode"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    pub fn addDomNodeInterfaces(self: *Self) void {
        _ = Inheritance.call(self, "addDomNodeInterface", .{ Inheritance.cast(?*DomNodeInterface, self) });
    }
    

    // throws Exception
    pub fn view(self: *Self) ?*String {
        { // try
            _ = self.addDomNodeInterfaces();
            return Inheritance.upcast(?*String, self.base.view());
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("view()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

