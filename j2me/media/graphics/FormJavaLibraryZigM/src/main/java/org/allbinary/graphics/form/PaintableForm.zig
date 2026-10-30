// Generated Code Do Not Modify
// package org.allbinary.graphics.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const RectangleFactory = @import("org/allbinary/graphics/RectangleFactory.zig").RectangleFactory;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const ABCustomForm = @import("org/allbinary/graphics/form/ABCustomForm.zig").ABCustomForm;
const FormType = @import("org/allbinary/graphics/form/FormType.zig").FormType;
const FormTypeFactory = @import("org/allbinary/graphics/form/FormTypeFactory.zig").FormTypeFactory;

pub const PaintableForm = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.PaintableForm";
    base: ABCustomForm = undefined,
    canvasStrings: ?*CanvasStrings = null,
    rectangle: ?*Rectangle = null,
    x: i32 = 0,
    y: i32 = 0,
    formType: ?*FormType = null,
    var NULL_PAINTABLE_FORM: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_PAINTABLE_FORM = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.canvasStrings = Inheritance.upcast(?*CanvasStrings, CanvasStrings.getInstance());
        this.rectangle = Inheritance.upcast(?*Rectangle, RectangleFactory.SINGLETON);
        this.x = 0;
        this.y = 0;
        this.formType = Inheritance.upcast(?*FormType, FormTypeFactory.getInstance().?.NULL_FORM_TYPE);
    }
    

    pub fn getNullPaintableForm() ?*PaintableForm {
        if (Object.same(PaintableForm.NULL_PAINTABLE_FORM, NullUtil.getInstance().?.NULL_OBJECT)) {
            PaintableForm.NULL_PAINTABLE_FORM = Inheritance.upcast(@TypeOf(PaintableForm.NULL_PAINTABLE_FORM), Inheritance.callStatic(PaintableForm, "create4", .{ StringUtil.getInstance().?.EMPTY_STRING, array_N66024: { const array_N66024_array = allocator.alloc(?*ABCustomItem, @intCast(0)) catch unreachable; @memset(array_N66024_array, null); break :array_N66024 array_N66024_array; }, BasicColorFactory.getInstance().?.BLACK, BasicColorFactory.getInstance().?.WHITE }));
        }
        return Inheritance.cast(?*PaintableForm, PaintableForm.NULL_PAINTABLE_FORM);
    }
    

    pub fn create4(title: ?*String, items: []?*ABCustomItem, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ABCustomForm, "create4", .{ title, items, backgroundBasicColor, foregroundBasicColor }).*;
        this.initFields();
        _ = Inheritance.call(this, "setSelectedIndex", .{ 0 });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, rectangle: ?*Rectangle, formType: ?*FormType) void {
        self.rectangle = rectangle;
        const point: ?*GPoint = Inheritance.upcast(?*GPoint, self.rectangle.?.getPoint());
        self.x = point.?.getX();
        self.y = point.?.getY();
        self.formType = formType;
    }
    

    pub fn getWidth(self: *Self) i32 {
        return self.rectangle.?.getWidth();
    }
};

