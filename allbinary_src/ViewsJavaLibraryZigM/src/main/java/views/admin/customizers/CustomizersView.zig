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
// package views.admin.customizers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Arrays = @import("java/util/Arrays.zig").Arrays;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const TransformInfoEntityBuilder = @import("org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder.zig").TransformInfoEntityBuilder;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const GLOBALS2 = @import("org/allbinary/globals/GLOBALS2.zig").GLOBALS2;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringComparator = @import("org/allbinary/logic/control/sort/StringComparator.zig").StringComparator;
const CustomizerTransformInfoData = @import("org/allbinary/logic/visual/transform/info/CustomizerTransformInfoData.zig").CustomizerTransformInfoData;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TransformTemplateCustomizerData = @import("org/allbinary/logic/visual/transform/template/customizer/TransformTemplateCustomizerData.zig").TransformTemplateCustomizerData;
const TransformTemplateCustomizersData = @import("org/allbinary/logic/visual/transform/template/customizer/TransformTemplateCustomizersData.zig").TransformTemplateCustomizersData;
const BodyData = @import("org/allbinary/logic/visual/transform/template/customizer/bodies/BodyData.zig").BodyData;
const TitleData = @import("org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleData.zig").TitleData;
const TransformTemplateCustomizerUtil = @import("org/allbinary/logic/visual/transform/template/util/TransformTemplateCustomizerUtil.zig").TransformTemplateCustomizerUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const HttpStoreComponentView = @import("views/business/context/modules/storefront/HttpStoreComponentView.zig").HttpStoreComponentView;

pub const CustomizersView = struct {
    const Self = @This();
    pub const java_name = "views.admin.customizers.CustomizersView";
    base: HttpStoreComponentView = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    customizersVector: ?*BasicArrayList = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HttpStoreComponentView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        this.customizersVector = Inheritance.upcast(@TypeOf(this.customizersVector), Inheritance.call(TransformInfoEntityBuilder.getInstance().?, "getNames", .{ Inheritance.receiverOf(Inheritance.receiver(this, "getWeblisketSession").getWeblisketSession().?, "getStoreName").getStoreName() }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        { // try
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ TransformTemplateCustomizersData.NAME }));
            const unsortedCustomizerViewVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            const size: i32 = self.customizersVector.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const viewName: ?*String = Inheritance.cast(?*String, Inheritance.call(self.customizersVector.?, "get", .{ index }));
                if (Inheritance.call(viewName.?, "indexOf", .{ CustomizerTransformInfoData.NAME }) > 0 and Inheritance.call(viewName.?, "indexOf", .{ GLOBALS2.EDIT }) > 0 and Inheritance.call(viewName.?, "indexOf", .{ BodyData.getInstance().?.VIEWNAMEKEY }) > 0 and Inheritance.call(viewName.?, "indexOf", .{ TitleData.getInstance().?.VIEWNAMEKEY }) > 0) {
                    _ = Inheritance.call(unsortedCustomizerViewVector.?, "add", .{ viewName });
                }
                }
            }
            const objectArray: []?Object = Inheritance.cast([]?Object, unsortedCustomizerViewVector.?.toArray());
            _ = Inheritance.callStatic(Arrays, "sort", .{ objectArray, StringComparator.create() });
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(objectArray.len))) : (index += 1) {
                const viewName: ?*String = Inheritance.cast(?*String, objectArray[@intCast(index)]);
                const viewNameNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, TransformTemplateCustomizerData.NAME, viewName, Inheritance.call(TransformTemplateCustomizerUtil.getInstance().?, "getPageNameHack", .{ viewName, Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getStoreName").getStoreName() }) }));
                _ = Inheritance.call(node.?, "appendChild", .{ viewNameNode });
                }
            }
            return node;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.XSLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.FAILURE, self, String.literal("toXmlNode"), e });
//             }
//             return null;
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
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("view()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

