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
// package org.allbinary.graphics.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const RectangleCollisionUtil = @import("org/allbinary/math/RectangleCollisionUtil.zig").RectangleCollisionUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const FormType = @import("org/allbinary/graphics/form/FormType.zig").FormType;
const FormTypeFactory = @import("org/allbinary/graphics/form/FormTypeFactory.zig").FormTypeFactory;
const ItemIndexDx = @import("org/allbinary/graphics/form/ItemIndexDx.zig").ItemIndexDx;
const ItemIndexPaintable = @import("org/allbinary/graphics/form/ItemIndexPaintable.zig").ItemIndexPaintable;
const ItemPaintable = @import("org/allbinary/graphics/form/ItemPaintable.zig").ItemPaintable;
const ItemPaintableFactory = @import("org/allbinary/graphics/form/ItemPaintableFactory.zig").ItemPaintableFactory;
const PaintableForm = @import("org/allbinary/graphics/form/PaintableForm.zig").PaintableForm;

pub const ScrollSelectionForm = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.ScrollSelectionForm";
    base: PaintableForm = undefined,
    rectangleCollisionUtil: ?*RectangleCollisionUtil = null,
    border: i32 = 0,
    halfBorder: i32 = 0,
    buttonBasicColor: ?*BasicColor = null,
    scrollSelectionFormFormTypeItemIndexPaintable: ?*ItemIndexPaintable = null,
    formTypeItemIndexDx: ?*ItemIndexDx = null,
    paintable: ?*ItemPaintable = null,
    adjustedExtraBorder: i32 = 0,
    var NULL_SCROLL_SELECTION_FORM: ?Object = undefined;
    var NULL_SCROLL_SELECTION_HORIZONTAL_FORM: ?Object = undefined;
    const INSIDE_FORM: ?*String = String.literal(" inside form");
    const IS_IN_FORM: ?*String = String.literal("isInForm");
    const GET_SELECTED_INDEX: ?*String = String.literal("getSelectedIndexForPoint");

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_SCROLL_SELECTION_FORM = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
        NULL_SCROLL_SELECTION_HORIZONTAL_FORM = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.rectangleCollisionUtil = Inheritance.upcast(?*RectangleCollisionUtil, RectangleCollisionUtil.getInstance());
        
        
        
        this.scrollSelectionFormFormTypeItemIndexPaintable = Inheritance.upcast(?*ItemIndexPaintable, ItemIndexPaintable.getInstance());
        this.formTypeItemIndexDx = Inheritance.upcast(?*ItemIndexDx, ItemIndexDx.getInstance());
        this.paintable = Inheritance.upcast(?*ItemPaintable, ItemPaintableFactory.getInstance());
        
    }
    

    pub fn createForm(title: ?*String, items: []?*ABCustomItem, formPaintableFactory: ?*ItemPaintableFactory, border: i32, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) ?*PaintableForm {
        { // try
            if (Object.same(formPaintableFactory, ItemPaintableFactory.getInstance())) {
                return Inheritance.upcast(?*PaintableForm, Inheritance.callStatic(ScrollSelectionForm, "create7", .{ title, items, formPaintableFactory, border, -3, backgroundBasicColor, foregroundBasicColor }));
            } else {
                const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
                const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
                _ = Inheritance.call(logUtil.?, "putF", .{ commonStrings.?.EXCEPTION, logUtil, commonStrings.?.EXCEPTION });
                return Inheritance.upcast(?*PaintableForm, PaintableForm.getNullPaintableForm());
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
//             const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
//             _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, logUtil, commonStrings.?.EXCEPTION, e });
//             return Inheritance.upcast(?*PaintableForm, PaintableForm.getNullPaintableForm());
    }
    

    pub fn getNullScrollSelectionForm() ?*ScrollSelectionForm {
        if (Object.same(ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM, NullUtil.getInstance().?.NULL_OBJECT)) {
            ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM = Inheritance.upcast(@TypeOf(ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM), Inheritance.callStatic(ScrollSelectionForm, "createForm", .{ StringUtil.getInstance().?.EMPTY_STRING, array_N66925: { const array_N66925_array = allocator.alloc(?*ABCustomItem, @intCast(0)) catch unreachable; @memset(array_N66925_array, null); break :array_N66925 array_N66925_array; }, ItemPaintableFactory.getInstance(), 0, BasicColorFactory.getInstance().?.BLACK, BasicColorFactory.getInstance().?.WHITE }));
        }
        return Inheritance.cast(?*ScrollSelectionForm, ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM);
    }
    

    pub fn getNullScrollSelectionFormHorizontal() ?*ScrollSelectionForm {
        if (Object.same(ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM, NullUtil.getInstance().?.NULL_OBJECT)) {
            ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM = Inheritance.upcast(@TypeOf(ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM), Inheritance.callStatic(ScrollSelectionForm, "createForm", .{ StringUtil.getInstance().?.EMPTY_STRING, array_N67264: { const array_N67264_array = allocator.alloc(?*ABCustomItem, @intCast(0)) catch unreachable; @memset(array_N67264_array, null); break :array_N67264 array_N67264_array; }, ItemPaintableFactory.getInstance(), 0, BasicColorFactory.getInstance().?.BLACK, BasicColorFactory.getInstance().?.WHITE }));
        }
        return Inheritance.cast(?*ScrollSelectionForm, ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM);
    }
    

    pub fn create7(title: ?*String, items: []?*ABCustomItem, formPaintableFactory: ?*ItemPaintableFactory, border: i32, adjustedExtraBorder: i32, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PaintableForm, "create4", .{ title, items, backgroundBasicColor, foregroundBasicColor }).*;
        this.initFields();
        this.adjustedExtraBorder = adjustedExtraBorder;
        this.buttonBasicColor = foregroundBasicColor;
        this.border = border;
        this.halfBorder = (border >> @intCast(1));
        this.paintable = Inheritance.upcast(@TypeOf(this.paintable), Inheritance.call(formPaintableFactory.?, "getInstanceItemPaintable", .{ this }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, rectangle: ?*Rectangle, formType: ?*FormType) void {
        _ = Inheritance.call(&self.base, "init", .{ rectangle, formType });
        const formTypeFactory: ?*FormTypeFactory = Inheritance.upcast(?*FormTypeFactory, FormTypeFactory.getInstance());
        if (Object.same(formType, formTypeFactory.?.HORIZONTAL_FORM)) {
            self.scrollSelectionFormFormTypeItemIndexPaintable = Inheritance.upcast(@TypeOf(self.scrollSelectionFormFormTypeItemIndexPaintable), Inheritance.callStatic(ScrollSelectionFormHorizontalPaintable, "create1", .{ self }));
            self.formTypeItemIndexDx = Inheritance.upcast(@TypeOf(self.formTypeItemIndexDx), Inheritance.callStatic(ScrollSelectionFormHorizontalDx, "create1", .{ self }));
        } else if (Object.same(formType, formTypeFactory.?.VERTICAL_CENTER_FORM)) {
            self.scrollSelectionFormFormTypeItemIndexPaintable = Inheritance.upcast(@TypeOf(self.scrollSelectionFormFormTypeItemIndexPaintable), Inheritance.callStatic(ScrollSelectionFormVerticalPaintable, "create1", .{ self }));
            self.formTypeItemIndexDx = Inheritance.upcast(@TypeOf(self.formTypeItemIndexDx), Inheritance.callStatic(ScrollSelectionFormVericalDx, "create1", .{ self }));
        } else if (Object.same(formType, formTypeFactory.?.TEMP_HORIZONTAL_FORM)) {
            self.scrollSelectionFormFormTypeItemIndexPaintable = Inheritance.upcast(@TypeOf(self.scrollSelectionFormFormTypeItemIndexPaintable), Inheritance.callStatic(ScrollSelectionFormTempHorizontalPaintable, "create1", .{ self }));
            self.formTypeItemIndexDx = Inheritance.upcast(@TypeOf(self.formTypeItemIndexDx), Inheritance.callStatic(ScrollSelectionFormTempHorizontalDx, "create1", .{ self }));
        } else if (Object.same(formType, formTypeFactory.?.NULL_FORM_TYPE)) {
        } else {
            std.debug.panic("{any}", .{exception: { _ = formTypeFactory.?.UNK; break :exception error.Exception; }});
        }
    }
    

    pub fn paintItemHorizontal(self: *Self, graphics: ?*Graphics, index: i32, item: ?*ABCustomItem, x: i32, y: i32) i32 {
        _ = graphics;
        _ = index;
        _ = y;
        const width: i32 = item.?.getMinimumWidth();
        return x + width + self.border;
    }
    

    pub fn paintItemVertical(self: *Self, graphics: ?*Graphics, index: i32, item: ?*ABCustomItem, x: i32, y: i32) i32 {
        _ = graphics;
        _ = index;
        _ = x;
        const height: i32 = item.?.getMinimumHeight();
        return y + height + self.border;
    }
    

    pub fn paintItemTempHorizontal(self: *Self, graphics: ?*Graphics, index: i32, item: ?*ABCustomItem, x: i32, y: i32) i32 {
        _ = graphics;
        _ = index;
        _ = item;
        _ = x;
        _ = y;
        _ = self;
        return 0;
    }
    

    pub fn getSelectedIndexForPointHorizontalDx(self: *Self, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
        _ = index;
        _ = item;
        _ = dy;
        return dx - self.halfBorder;
    }
    

    pub fn getSelectedIndexForPointVerticalDx(self: *Self, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
        _ = index;
        _ = dy;
        return dx + Inheritance.call(self, "getDiffX", .{ item });
    }
    

    pub fn getSelectedIndexForPointTempHorizontalDx(self: *Self, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
        _ = index;
        _ = dy;
        return dx + Inheritance.call(self, "getDiffX", .{ item });
    }
    

    pub fn append(self: *Self, item: ?*ABCustomItem) i32 {
        return Inheritance.call(&self.base, "append", .{ item });
    }
    

    // throws Exception
    pub fn getSelectedItem(self: *Self, point: ?*GPoint) ?*ABCustomItem {
        const index: i32 = Inheritance.call(self, "getSelectedIndexForPoint", .{ point });
        if (index != -1) {
            return Inheritance.upcast(?*ABCustomItem, Inheritance.call(self, "get", .{ index }));
        } else {
            return Inheritance.upcast(?*ABCustomItem, ABCustomItem.getNullInstance());
        }
    }
    

    // throws Exception
    pub fn getItemIndex(self: *Self, item: ?*ABCustomItem) i32 {
        var nextItem: ?*ABCustomItem = null;
        const size: i32 = Inheritance.receiver(self, "size").size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            nextItem = Inheritance.cast(?*ABCustomItem, Inheritance.call(self, "get", .{ index }));
            if (Object.same(nextItem, item)) {
                return index;
            }
            }
        }
        return -1;
    }
    

    pub fn getStartIndex(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    // throws Exception
    pub fn getSelectedIndexForPoint(self: *Self, point: ?*GPoint) i32 {
        const start: i32 = self.getStartIndex();
        const size: i32 = Inheritance.receiver(self, "size").size();
        var dx: i32 = self.getDx();
        var dy: i32 = self.getDy();
        const formTypeFactory: ?*FormTypeFactory = Inheritance.upcast(?*FormTypeFactory, FormTypeFactory.getInstance());
        const commonLabels: ?*CommonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonLabels.?.START_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ start });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonLabels.?.TOTAL_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ size });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, ScrollSelectionForm.GET_SELECTED_INDEX });
        var item: ?*ABCustomItem = null;
        var width: i32 = 0;
        var height: i32 = 0;
        var diffX: i32 = 0;
        {
            var index: i32 = start;
            while (index < size) : (index += 1) {
            item = Inheritance.upcast(@TypeOf(item), Inheritance.call(self, "get", .{ index }));
            width = item.?.getMinimumWidth();
            height = item.?.getMinimumHeight();
            diffX = Inheritance.call(self.formTypeItemIndexDx.?, "getDx", .{ index, item, dx, dy });
            if (Inheritance.call(self.rectangleCollisionUtil.?, "isInside", .{ diffX, dy - self.halfBorder, diffX + width + self.border, dy + height + self.halfBorder + 1, point.?.getX(), point.?.getY() })) {
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ commonLabels.?.ITEM_LABEL });
                _ = Inheritance.call(stringBuffer.?, "append", .{ item.?.getLabel() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
                _ = Inheritance.call(stringBuffer.?, "append", .{ commonLabels.?.INDEX_LABEL });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ index });
                _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, ScrollSelectionForm.GET_SELECTED_INDEX });
                return index;
            }
            if (Object.same(Inheritance.fieldPointer(self, "formType").*, formTypeFactory.?.HORIZONTAL_FORM)) {
                dx = dx + width + self.border;
                if (dx > Inheritance.fieldPointer(self, "rectangle").*.?.getMaxX()) {
                    break;
                }
            } else if (Object.same(Inheritance.fieldPointer(self, "formType").*, formTypeFactory.?.VERTICAL_CENTER_FORM)) {
                dy = dy + height + self.border;
                if (dy > Inheritance.fieldPointer(self, "rectangle").*.?.getMaxY()) {
                    break;
                }
            } else if (Object.same(Inheritance.fieldPointer(self, "formType").*, formTypeFactory.?.NULL_FORM_TYPE)) {
            } else {
                std.debug.panic("{any}", .{exception: { _ = formTypeFactory.?.UNK; break :exception error.Exception; }});
            }
            }
        }
        return -1;
    }
    

    // throws Exception
    pub fn processInputKey(self: *Self, gameKeyCode: i32) i32 {
        const formTypeFactory: ?*FormTypeFactory = Inheritance.upcast(?*FormTypeFactory, FormTypeFactory.getInstance());
        if (Inheritance.receiver(self, "size").size() == 0) {
            return -1;
        }
        var index: i32 = Inheritance.receiver(self, "getSelectedIndex").getSelectedIndex();
        if (Object.same(Inheritance.fieldPointer(self, "formType").*, formTypeFactory.?.HORIZONTAL_FORM) or Object.same(Inheritance.fieldPointer(self, "formType").*, formTypeFactory.?.TEMP_HORIZONTAL_FORM)) {
            if (gameKeyCode == Canvas.RIGHT) {
                index += 1;
            } else if (gameKeyCode == Canvas.LEFT) {
                index -= 1;
            }
        } else if (Object.same(Inheritance.fieldPointer(self, "formType").*, formTypeFactory.?.VERTICAL_CENTER_FORM)) {
            if (gameKeyCode == Canvas.DOWN) {
                index += 1;
            } else if (gameKeyCode == Canvas.UP) {
                index -= 1;
            }
        } else if (Object.same(Inheritance.fieldPointer(self, "formType").*, formTypeFactory.?.NULL_FORM_TYPE)) {
        } else {
            std.debug.panic("{any}", .{exception: { _ = formTypeFactory.?.UNK; break :exception error.Exception; }});
        }
        const max: i32 = Inheritance.receiver(self, "size").size() - 1;
        if (index < 0) {
            _ = Inheritance.call(self, "setSelectedIndex", .{ 0 });
        } else if (index > max) {
            _ = Inheritance.call(self, "setSelectedIndex", .{ max });
        } else {
            _ = Inheritance.call(self, "setSelectedIndex", .{ index });
        }
        return -1;
    }
    

    pub fn isInForm(self: *Self, point: ?*GPoint) bool {
        if (Inheritance.call(self.rectangleCollisionUtil.?, "isInside", .{ Inheritance.fieldPointer(self, "x").*, Inheritance.fieldPointer(self, "y").* - self.halfBorder, Inheritance.fieldPointer(self, "rectangle").*.?.getMaxX() + self.border, Inheritance.fieldPointer(self, "rectangle").*.?.getMaxY() + self.border, point.?.getX(), point.?.getY() })) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ point }) }).?, "append", .{ ScrollSelectionForm.INSIDE_FORM }))), self, ScrollSelectionForm.IS_IN_FORM });
            return true;
        }
        return false;
    }
    

    // throws Exception
    pub fn paintItem(self: *Self, graphics: ?*Graphics, index: i32, item: ?*ABCustomItem, x: i32, y: i32) i32 {
        _ = Inheritance.call(item.?, "paintXY", .{ graphics, x, y });
        const width: i32 = item.?.getMinimumWidth();
        const height: i32 = item.?.getMinimumHeight();
        _ = Inheritance.call(graphics.?, "setColor", .{ Inheritance.receiverOf(self.getButtonBasicColor().?, "intValue").intValue() });
        const adjustedBorder: i32 = 3;
        _ = Inheritance.call(graphics.?, "drawRect", .{ x - self.halfBorder - adjustedBorder, y - self.halfBorder - adjustedBorder, width + self.border + self.adjustedExtraBorder, height + self.border + self.adjustedExtraBorder });
        return Inheritance.call(self.scrollSelectionFormFormTypeItemIndexPaintable.?, "paint", .{ graphics, index, item, x, y });
    }
    

    // throws Exception
    pub fn paintUnselectedItem(self: *Self, graphics: ?*Graphics, index: i32, item: ?*ABCustomItem, x: i32, y: i32) i32 {
        _ = Inheritance.call(graphics.?, "setColor", .{ Inheritance.receiverOf(self.getButtonBasicColor().?, "intValue").intValue() });
        _ = Inheritance.call(item.?, "paintUnselected", .{ graphics, x, y });
        return Inheritance.call(self.scrollSelectionFormFormTypeItemIndexPaintable.?, "paint", .{ graphics, index, item, x, y });
    }
    

    pub fn getDiffX(self: *Self, item: ?*ABCustomItem) i32 {
        _ = item;
        _ = self;
        return 0;
    }
    

    pub fn getDx(self: *Self) i32 {
        return Inheritance.fieldPointer(self, "x").*;
    }
    

    pub fn getDy(self: *Self) i32 {
        return Inheritance.fieldPointer(self, "y").*;
    }
    

    pub fn setButtonBasicColor(self: *Self, buttonBasicColor: ?*BasicColor) void {
        self.buttonBasicColor = buttonBasicColor;
    }
    

    pub fn getButtonBasicColor(self: *Self) ?*BasicColor {
        return self.buttonBasicColor;
    }
    pub const ScrollSelectionFormHorizontalPaintable = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.form.ScrollSelectionFormHorizontalPaintable";
        base: ItemIndexPaintable = undefined,
        scrollSelectionForm: ?*ScrollSelectionForm = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(scrollSelectionForm: ?*ScrollSelectionForm) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = ItemIndexPaintable.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "scrollSelectionForm").* = scrollSelectionForm;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        // throws Exception
        pub fn paint(self: *Self, graphics: ?*Graphics, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
            return Inheritance.call(Inheritance.fieldPointer(self, "scrollSelectionForm").*.?, "paintItemHorizontal", .{ graphics, index, item, dx, dy });
        }
    };
    pub const ScrollSelectionFormVerticalPaintable = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.form.ScrollSelectionFormVerticalPaintable";
        base: ItemIndexPaintable = undefined,
        scrollSelectionForm: ?*ScrollSelectionForm = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(scrollSelectionForm: ?*ScrollSelectionForm) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = ItemIndexPaintable.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "scrollSelectionForm").* = scrollSelectionForm;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        // throws Exception
        pub fn paint(self: *Self, graphics: ?*Graphics, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
            return Inheritance.call(Inheritance.fieldPointer(self, "scrollSelectionForm").*.?, "paintItemVertical", .{ graphics, index, item, dx, dy });
        }
    };
    pub const ScrollSelectionFormTempHorizontalPaintable = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.form.ScrollSelectionFormTempHorizontalPaintable";
        base: ItemIndexPaintable = undefined,
        scrollSelectionForm: ?*ScrollSelectionForm = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(scrollSelectionForm: ?*ScrollSelectionForm) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = ItemIndexPaintable.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "scrollSelectionForm").* = scrollSelectionForm;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        // throws Exception
        pub fn paint(self: *Self, graphics: ?*Graphics, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
            return Inheritance.call(Inheritance.fieldPointer(self, "scrollSelectionForm").*.?, "paintItemTempHorizontal", .{ graphics, index, item, dx, dy });
        }
    };
    pub const ScrollSelectionFormHorizontalDx = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.form.ScrollSelectionFormHorizontalDx";
        base: ItemIndexDx = undefined,
        scrollSelectionForm: ?*ScrollSelectionForm = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(multipleScrollSelectionForm: ?*ScrollSelectionForm) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = ItemIndexDx.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "scrollSelectionForm").* = multipleScrollSelectionForm;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        // throws Exception
        pub fn getDx(self: *Self, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
            return Inheritance.call(Inheritance.fieldPointer(self, "scrollSelectionForm").*.?, "getSelectedIndexForPointHorizontalDx", .{ index, item, dx, dy });
        }
    };
    pub const ScrollSelectionFormVericalDx = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.form.ScrollSelectionFormVericalDx";
        base: ItemIndexDx = undefined,
        scrollSelectionForm: ?*ScrollSelectionForm = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(multipleScrollSelectionForm: ?*ScrollSelectionForm) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = ItemIndexDx.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "scrollSelectionForm").* = multipleScrollSelectionForm;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        // throws Exception
        pub fn getDx(self: *Self, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
            return Inheritance.call(Inheritance.fieldPointer(self, "scrollSelectionForm").*.?, "getSelectedIndexForPointVerticalDx", .{ index, item, dx, dy });
        }
    };
    pub const ScrollSelectionFormTempHorizontalDx = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.form.ScrollSelectionFormTempHorizontalDx";
        base: ItemIndexDx = undefined,
        scrollSelectionForm: ?*ScrollSelectionForm = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(multipleScrollSelectionForm: ?*ScrollSelectionForm) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = ItemIndexDx.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "scrollSelectionForm").* = multipleScrollSelectionForm;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        // throws Exception
        pub fn getDx(self: *Self, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
            return Inheritance.call(Inheritance.fieldPointer(self, "scrollSelectionForm").*.?, "getSelectedIndexForPointTempHorizontalDx", .{ index, item, dx, dy });
        }
    };
};

