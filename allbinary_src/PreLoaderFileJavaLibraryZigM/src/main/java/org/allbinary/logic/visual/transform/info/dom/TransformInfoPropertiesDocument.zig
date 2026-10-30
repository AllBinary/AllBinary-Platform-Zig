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
// package org.allbinary.logic.visual.transform.info.dom

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const DomDocumentFileHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentFileHelper.zig").DomDocumentFileHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const TransformInfoData = @import("org/allbinary/logic/visual/transform/info/TransformInfoData.zig").TransformInfoData;
const TransformInfoProperties = @import("org/allbinary/logic/visual/transform/info/TransformInfoProperties.zig").TransformInfoProperties;
const TransformInfoPropertiesFactory = @import("org/allbinary/logic/visual/transform/info/TransformInfoPropertiesFactory.zig").TransformInfoPropertiesFactory;
const TransformInfosData = @import("org/allbinary/logic/visual/transform/info/TransformInfosData.zig").TransformInfosData;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;

pub const TransformInfoPropertiesDocument = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument";
    logUtil: ?*LogUtil = null,
    document: ?*Document = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(filePath: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const xmlFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ filePath }));
        this.document = Inheritance.upcast(@TypeOf(this.document), Inheritance.callStatic(DomDocumentFileHelper, "createDocument", .{ xmlFile }));
        return this;
    }
    

    pub fn toTransformInfoPropertiesHashMap(self: *Self) ?*HashMap {
        { // try
            const transformInfoPropertiesHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            const transformInfosNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(Inheritance.call(self.document.?, "getElementsByTagName", .{ TransformInfosData.getInstance().?.NAME }).?, "item", .{ 0 }));
            const transformInfosChildNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, transformInfosNode.?.getChildNodes());
            const transformInfoNodeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(DomSearchHelper, "getAllNodes", .{ TransformInfoData.getInstance().?.NAME, transformInfosChildNodeList }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Size: "), transformInfoNodeVector.?.size()), self, String.literal("toTransformInfoPropertiesHashMap()") });
            }
            const size: i32 = transformInfoNodeVector.?.size();
            var node: ?*Node = null;
            var transformInfoProperties: ?*TransformInfoProperties = null;
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                node = Inheritance.cast(?*Node, Inheritance.call(transformInfoNodeVector.?, "get", .{ index }));
                transformInfoProperties = Inheritance.upcast(@TypeOf(transformInfoProperties), Inheritance.call(TransformInfoPropertiesFactory.getInstance().?, "getInstance", .{ node }));
                _ = Inheritance.call(transformInfoPropertiesHashMap.?, "put", .{ transformInfoProperties.?.getName(), transformInfoProperties });
                }
            }
            return transformInfoPropertiesHashMap;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("toTransformInfoPropertiesHashMap()"), e });
//             }
//             return null;
    }
};

