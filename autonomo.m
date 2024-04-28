load census
% La funcion polyfit sirve para ajustar  polinomio a una serie de datos
% seleccionando el grado que se desea utilizar, esta herramienta funciona
% por el metodo de minimos cuadrados.
% Por otra parte la funcion Polyval, se emplea para evaluar el valor de un polinomio de grado n determinado por polyfit y evaluado en x.
f1 = polyval(pop,cdate);
plot(cdate,pop,'o');
title('Poblacion EE.UU entre 1790 y 1990' )
xlabel ('Año censado')
ylabel('Poblacion registrada (millones)')
hold on
p = polyfit(cdate,pop,1);
pop1 = polyval(p,cdate);
p1 = plot (cdate,pop1,"g");

p = polyfit(cdate,pop,2);
pop2 = polyval(p,cdate);
p2 = plot (cdate,pop2);
hold on
p = polyfit(cdate,pop,3);
pop3 = polyval(p,cdate);
p3 = plot (cdate,pop3,"m");
hold on
hold off
legend([p1 p2 p3],{'Polinomio1','polinomio 2','polinomio 3'})
error1 = immse(pop,pop1);
error2 = immse(pop,pop2);
error3 = immse(pop,pop3);
disp(['el EMC para un ajuste lineal es: ', num2str(error1)]);
disp(['el EMC medio para un ajuste polinomial grado 2 es: ', num2str(error2)]);
disp(['el EMC para un ajuste polinomial grado 3 es: ', num2str(error3)]);
disp(['El mejor ajuste para los datos arrojados por la base de datos "Census" es el polinomio de grado 3, con un ECM de: ', num2str(error3)]);