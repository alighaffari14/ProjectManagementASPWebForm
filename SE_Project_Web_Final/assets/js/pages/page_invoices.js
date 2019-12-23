$(function() {
    // init invoices
    altair_invoices.init();
});

// variables
var $invoice_card = $('#invoice'),
    $invoice_preview = $('#invoice_preview'),
    $invoice_form = $('#invoice_form'),
    $invoices_list_main = $('#invoices_list'),
    invoice_list_class = '.invoices_list', // main/sidebar list
    $invoice_add_btn = $('#invoice_add');

altair_invoices  = {
    init: function() {
        // copy list to sidebar
        altair_invoices.copy_list_sidebar();
        // add new invoice
        altair_invoices.add_new();
        // open invoice
        altair_invoices.open_invoice();
        // print invoice btn
        altair_invoices.print_invoice();
    },
    add_new: function() {
        if($invoice_add_btn) {

            var insert_form = function() {

                var $invoice_form_template = $('#invoice_form_template'),
                    card_height = $invoice_card.height(),
                    content_height = $invoice_card.find('.md-card-content').innerHeight(),
                    invoice_form_template_content = $invoice_form_template.html();

                // remove "uk-active" class form invoices list
                $(invoice_list_class).find('.md-list-item-active').removeClass('md-list-item-active');
                // set height for card-single
                $invoice_card.height(card_height);

                $invoice_form
                    .hide()
                    // add form to card
                    .html(invoice_form_template_content)
                    // set height for card content
                    .find('.md-card-content').innerHeight(content_height);

                // append services to invoice form
                var append_service = function() {

                    var $invoice_form_template_services = $('#invoice_form_template_services'),
                        $invoice_services = $invoice_form.find('#form_invoice_services');

                    var template = $invoice_form_template_services.html(),
                        template_compiled = Handlebars.compile(template);

                    var service_id = (!$invoice_services.children().length) ? 1 : parseInt($invoice_services.children('.uk-grid:last').attr('data-service-number')) + 1,
                        context = {
                            "invoice_service_id": service_id
                        },
                        theCompiledHtml = template_compiled(context);

                    $invoice_services.append(theCompiledHtml);

                    // invoice md inputs
                    altair_md.inputs();
                    // invoice textarea autosize
                    altair_forms.textarea_autosize();

                    // reinitialize uikit margin
                    altair_uikit.reinitialize_grid_margin();

                };

                // append first service to invoice form on init
                append_service();

                $('#invoice_form_append_service_btn').on('click', function (e) {
                    e.preventDefault();
                    // append service to invoice form
                    append_service();
                });

                // invoice due-date radio boxes
                altair_md.checkbox_radio();

            };

            // show invoice form on animation complete
            var show_form = function() {
                $invoice_card.css({
                    'height': ''
                });
                $invoice_form.show();
                $invoice_preview.html('');
                setTimeout(function() {
                    // reinitialize uikit margin
                    altair_uikit.reinitialize_grid_margin();
                },560); //2 x animation duration
            };

            // show invoice form on fab click event
            $invoice_add_btn.on('click', function (e) {
                e.preventDefault();
                altair_md.card_show_hide($invoice_card,insert_form,show_form,undefined);
            })

        }
    },
    open_invoice: function() {

        var show_invoice = function (element) {
             
            var CustomerInvoiceInfo = getCustomerInvoices();
            var invoiceTotalValue = 0;
            for (var i = 0; i < CustomerInvoiceInfo.CustomerInvoices.length; i++)
            {
                invoiceTotalValue += CustomerInvoiceInfo.CustomerInvoices[i].BalanceDue
            } 
            var $this = element,
                $invoice_template = $('#invoice_template');

            var template = $invoice_template.html(),
                template_compiled = Handlebars.compile(template);

            var invoice_id = parseInt($this.attr('data-invoice-id')),
                context = {
                    invoice_id: {
                        
                        invoice_date: new Date().toLocaleString(),
                        
                        invoice_from_company:   'Haseen Habeeb (Pvt)Ltd',
                        invoice_from_address_1: 'Shahra-e-Faisal Karachi',
                        invoice_from_address_2: 'Pso Pump',
                        invoice_to_company:     CustomerInvoiceInfo.CustomerName,
                        invoice_to_address_1:   CustomerInvoiceInfo.CustomerAddress,
                        invoice_to_address_2:   CustomerInvoiceInfo.CustomerCode,
                        invoice_total_value: 'PKR ' + invoiceTotalValue,
                        invoice_vat_value:      '$862.85',
                        invoice_services: CustomerInvoiceInfo.CustomerInvoices
                            //[
                        //    {
                        //        service_name:           "Website design & development",
                        //        service_description:    "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
                        //        service_rate:           "$25.00",
                        //        service_hours:          "32",
                        //        service_vat:            "23%",
                        //        service_total:          "$984.00"
                        //    },
                        //    {
                        //        service_name:           "Search engine optimization",
                        //        service_description:    "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab blanditiis cupiditate delectus deserunt.",
                        //        service_rate:           "$50.00",
                        //        service_hours:          "20",
                        //        service_vat:            "23%",
                        //        service_total:          "$1,230.00"
                        //    },
                        //    {
                        //        service_name:           "Consulting service",
                        //        service_description:    "Lorem ipsum dolor sit amet, consectetur.",
                        //        service_rate:           "$100.00",
                        //        service_hours:          "12.5",
                        //        service_vat:            "23%",
                        //        service_total:          "$1,537.50"
                        //    }
                        //]
                        ,
                        invoice_payment_info: 'Powered by: Ornosoft<br/> Visit : www.ornosoft.com ',
                        invoice_payment_due:    '14'
                    }
                },
                theCompiledHtml = template_compiled(context);

            $invoice_preview.html(theCompiledHtml);
            $invoice_form.html('');

            $window.resize();

        };

        $(invoice_list_class)
            .on('click','a', function(e) {
                e.preventDefault();
                e.stopPropagation();
                altair_md.card_show_hide($invoice_card,undefined,show_invoice,$(this));
                $(this).closest('li').siblings('li').removeClass('md-list-item-active').end().addClass('md-list-item-active');
                setTimeout(function() {
                    // reinitialize uikit margin
                    altair_uikit.reinitialize_grid_margin();
                },560); //2 x animation duration
            })
            .find('a').eq(2).click();

    },
    print_invoice: function() {
        $body.on('click','#invoice_print',function(e) {
            e.preventDefault();
            UIkit.modal.confirm('Do you want to print this invoice?', function () {
                // wait for dialog to fully hide
                setTimeout(function () {
                    window.print();
                }, 300)
            }, {
                labels: {
                    'Ok': 'print'
                }
            });
        })
    },
    copy_list_sidebar: function() {
        // hide secondary sidebar toggle btn for large screens
        $sidebar_secondary_toggle.addClass('uk-hidden-large');

        var invoices_list_sidebar = $invoices_list_main.clone();

        invoices_list_sidebar.attr('id','invoices_list_sidebar');

        $sidebar_secondary
            .find('.sidebar_secondary_wrapper').html(invoices_list_sidebar)
            .end();

    }
};