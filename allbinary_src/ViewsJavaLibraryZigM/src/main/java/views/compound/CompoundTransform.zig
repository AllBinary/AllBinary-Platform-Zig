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
// package views.compound

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const URIResolver = @import("javax/xml/transform/URIResolver.zig").URIResolver;
const BasicUriResolver = @import("org/allbinary/data/tree/dom/BasicUriResolver.zig").BasicUriResolver;
const StoreUriResolver = @import("org/allbinary/data/tree/dom/StoreUriResolver.zig").StoreUriResolver;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ServiceClientInformationInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory.zig").ServiceClientInformationInterfaceFactory;
const AbTransformer = @import("org/allbinary/logic/visual/transform/AbTransformer.zig").AbTransformer;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const CompoundContextTransformInfoObjectConfig = @import("views/compound/objectConfig/CompoundContextTransformInfoObjectConfig.zig").CompoundContextTransformInfoObjectConfig;

pub const CompoundTransform = struct {
    const Self = @This();
    pub const java_name = "views.compound.CompoundTransform";
    base: AbTransformer = undefined,
    logUtil: ?*LogUtil = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.abeClientInformation = Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.getInstance());
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbTransformer, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        _ = Inheritance.call(this, "setURIResolver", .{ Inheritance.cast(?*URIResolver, Inheritance.callStatic(StoreUriResolver, "create2", .{ Inheritance.receiver(this, "getTransformInfoInterface").getTransformInfoInterface(), Inheritance.cast(?*BasicUriResolver, Inheritance.receiver(this, "getURIResolver").getURIResolver()) })) });
        const objectConfig: ?*CompoundContextTransformInfoObjectConfig = Inheritance.callStatic(CompoundContextTransformInfoObjectConfig, "create3", .{ this.abeClientInformation, Inheritance.receiver(this, "getTransformInfoInterface").getTransformInfoInterface(), Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.receiver(this, "getTransformInfoInterface").getTransformInfoInterface().?, "getObjectConfigInterface").getObjectConfigInterface().?, "toXmlDoc").toXmlDoc() });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("\nObjectConfig: \n"), Object.toString(Object.of(objectConfig))), this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        }
        const templateInputStream: ?*InputStream = Inheritance.upcast(?*InputStream, Inheritance.receiver(objectConfig.?, "createInputStream").createInputStream());
        _ = Inheritance.call(this, "setInputStream", .{ templateInputStream });
        Inheritance.bindOverrides(this);
        return this;
    }
};

